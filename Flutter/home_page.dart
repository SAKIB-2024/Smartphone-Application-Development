import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xffdfe9f3),
              Color(0xfff8faff),
              Color(0xffcfd9df), 
            ],
          ),
        ),

        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 15),
              const Text(
                "Home",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 25),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: GridView.count(
                    crossAxisCount: 3,
                    mainAxisSpacing: 28,
                    crossAxisSpacing: 28,
                    children: const [
                      AppIcon(name: "Gallery", icon: Icons.photo),
                      AppIcon(name: "Games", icon: Icons.sports_esports),
                      AppIcon(name: "Music", icon: Icons.music_note),
                      AppIcon(name: "Camera", icon: Icons.camera_alt),
                      AppIcon(name: "Settings", icon: Icons.settings),
                      AppIcon(name: "Coding", icon: Icons.code),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AppIcon extends StatelessWidget {
  final String name;
  final IconData icon;

  const AppIcon({
    super.key,
    required this.name,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            color: Colors.white.withOpacity(0.35), // glass effect
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.15),
                blurRadius: 12,
                offset: const Offset(2, 4),
              ),
            ],
            border: Border.all(
              color: Colors.white.withOpacity(0.5),
              width: 1.5,
            ),
          ),
          child: Icon(
            icon,
            size: 36,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          name,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }
}
