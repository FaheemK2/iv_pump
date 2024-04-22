// flow_rates_page.dart

import 'package:flutter/material.dart';
import 'analytics_page.dart';

class FlowRatesPage extends StatefulWidget {
  const FlowRatesPage({super.key});

  @override
  State<FlowRatesPage> createState() => _FlowRatesPageState();
}

class _FlowRatesPageState extends State<FlowRatesPage> {
  final TextEditingController _flowRateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flow Rates'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Card(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    Text('IV 0.9% NaCl', style: TextStyle(fontSize: 24)),
                    SizedBox(height: 8.0),
                    Text('10.0 mL/hr', style: TextStyle(fontSize: 48)),
                    SizedBox(height: 8.0),
                    Text('Last Updated: 12:50:29', style: TextStyle(fontSize: 16)),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            TextField(
              controller: _flowRateController,
              decoration: const InputDecoration(
                labelText: 'Enter Flow Rate:',
                border: OutlineInputBorder(),
              ),
              keyboardType: const TextInputType.numberWithOptions(decimal: true),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // TODO: Handle ON/OFF logic
              },
              child: const Text('ON/OFF'),
            ),
            ElevatedButton(
              onPressed: () {
                // TODO: Handle RUN/STOP logic
              },
              child: const Text('RUN/STOP'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const AnalyticsPage()));
              },
              child: const Text('ANALYTICS'),
            ),
          ],
        ),
      ),
    );
  }
}