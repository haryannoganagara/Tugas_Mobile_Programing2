// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tugas_mp2/ui/home.dart';

class SuhuPage extends StatefulWidget {
  const SuhuPage({super.key});

  @override
  State<SuhuPage> createState() => _SuhuPageState();
}

class _SuhuPageState extends State<SuhuPage> {
  String _fromUnit = "Reamur";
  String _toUnit = "Kelvin";
  final List<String> _unitOptions = ["Reamur", "Kelvin", "Celcius", "Fahrenheit"];
  final TextEditingController _temperatureController = TextEditingController();
  final TextEditingController _convertedTemperatureController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _convertedTemperatureController.text = "";
  }

  double _convert(double value, String fromUnit, String toUnit) {
    switch (fromUnit) {
      case 'Reamur':
        value = value * 5 / 4;
        break;
      case 'Kelvin':
        value = value - 273.15;
        break;
      case 'Celcius':
        // No conversion needed for Celcius to other units
        break;
      case 'Fahrenheit':
        value = (value - 32) * 5 / 9;
        break;
    }

    switch (toUnit) {
      case 'Reamur':
        value = value * 4 / 5;
        break;
      case 'Kelvin':
        value = value + 273.15;
        break;
      case 'Celcius':
        // No conversion needed for other units to Celcius
        break;
      case 'Fahrenheit':
        value = value * 9 / 5 + 32;
        break;
    }

    return value;
  }

  void _updateTextFieldValue() {
    if (_temperatureController.text.isEmpty) return;

    double temperature = double.parse(_temperatureController.text);
    double convertedTemperature = _convert(temperature, _fromUnit, _toUnit);

    _convertedTemperatureController.text = convertedTemperature.toStringAsFixed(2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Konversi Suhu'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DropdownButton<String>(
                  value: _fromUnit,
                  items: _unitOptions.map((String unit) {
                    return DropdownMenuItem<String>(
                      value: unit,
                      child: Text(unit),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      _fromUnit = newValue!;
                      _updateTextFieldValue();
                    });
                  },
                ),
                const Text('ke'),
                DropdownButton<String>(
                  value: _toUnit,
                  items: _unitOptions.map((String unit) {
                    return DropdownMenuItem<String>(
                      value: unit,
                      child: Text(unit),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      _toUnit = newValue!;
                      _updateTextFieldValue();
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _temperatureController,
              decoration: InputDecoration(labelText: 'Masukkan Nilai Suhu'),
              keyboardType: TextInputType.number,
              onChanged: (String value) => _updateTextFieldValue(),
            ),
            const SizedBox(height: 10),
            TextField(
              enabled: false,
              controller: _convertedTemperatureController,
              decoration: InputDecoration(labelText: 'Hasil Konversi'),
            ),
            const Spacer(),
                TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) =>  Home()),
                    );
                      },
                      child: const Text('kembali'),
              ),
          ],
        ),
      ),
    );
  }
}
