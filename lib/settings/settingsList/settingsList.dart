import 'package:flutter/material.dart';

class SettingsList extends StatefulWidget {
  SettingsList({Key? key}) : super(key: key);

  @override
  State<SettingsList> createState() => _SettingsListState();
}

class _SettingsListState extends State<SettingsList> {
  final List<Map> settingOptions = [
    {
      "title": "Network & internet",
      "subTitle": "Wi-Fi, mobile, data usage, and hotspot"
    },
    {"title": "Connected devices", "subTitle": "Bluetooth, Android Auto"},
    {"title": "Apps & notitications", "subTitle": "Recent apps, default apps"},
    {"title": "Battery", "subTitle": "100%"},
    {"title": "Display", "subTitle": "Wallpaper, sleep, font size"},
    {"title": "Sound", "subTitle": "Volume, vibration, Do Not Disturb"},
    {"title": "Storage", "subTitle": "46% used - 4.33 GB free"},
    {
      "title": "Privacy",
      "subTitle": "Permissions, account activity, personal data"
    },
    {"title": "Location", "subTitle": "On - 5 apps have access to location"},
  ];

  final List iconColors = [
    Colors.blue,
    Colors.green,
    Colors.orange,
    Colors.blueAccent,
    Colors.yellow,
    Colors.purple,
    Colors.amber,
    Colors.yellowAccent,
    Colors.greenAccent,
    Colors.blueAccent,
  ];

  List icons = [
    Icons.wifi,
    Icons.devices,
    Icons.apps_rounded,
    Icons.battery_full,
    Icons.brightness_6,
    Icons.volume_up,
    Icons.storage,
    Icons.security,
    Icons.location_on
  ];

  

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      for (int i = 0; i < settingOptions.length; i++)
        _options(
            iconData: icons[i],
            iconColor: iconColors[i],
            title: settingOptions[i]['title'],
            subTitle: settingOptions[i]['subTitle'])
    ]);
  }

  Widget _options(
      {required IconData iconData,
      required Color iconColor,
      required String title,
      required String subTitle}) {
    return GestureDetector(
      onTap: () {
        print("You pressed " + title);
      },
      child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 15),
                child: CircleAvatar(
                  backgroundColor: iconColor,
                  radius: 20,
                  child: Icon(iconData, color: Colors.black),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(subTitle)
                ],
              )
            ],
          )),
    );
  }
}
