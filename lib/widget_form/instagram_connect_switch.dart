import 'package:flutter/material.dart';

class InstagramConnectSwitch extends StatefulWidget {
  const InstagramConnectSwitch({super.key});

  @override
  State<InstagramConnectSwitch> createState() =>
      _InstagramConnectSwitchState();
}

class _InstagramConnectSwitchState extends State<InstagramConnectSwitch> {
  // TODO jelaskan: Variabel state boolean untuk menyimpan kondisi switch aktif/nonaktif, bernilai awal false (posisi off).
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Instagram Connect Switch Example')),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Connect Instagram'),
            const SizedBox(width: 8),
            Switch(
              // TODO jelaskan: Menentukan status posisi visual Switch saat ini (true = on/aktif, false = off/mati) berdasarkan variabel state isOn.
              value: isOn,
              onChanged: (bool val) {
                setState(() {
                  // TODO jelaskan: Memperbarui nilai variabel isOn dengan nilai baru (val) dari interaksi pengguna, lalu memicu render ulang (rebuild) tampilan UI.
                  isOn = val;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
