import 'package:flutter/material.dart';

class PupilsPage extends StatelessWidget {
  const PupilsPage({super.key});

  //list of pupils
  final List<Map<String, String>> pupils = const [
    {'name': 'Ayomide', 'group': 'A'},
    {'name': 'Chidera', 'group': 'B'},
    {'name': 'David', 'group': 'A'},
  ];

  @override
  Widget build(BuildContext context) {
    const Color yellowBg = Color(0xFFFFC84D);
    const Color jollyBlue = Color(0xFF2F63D9);

    return Scaffold(
      backgroundColor: yellowBg,
      appBar: AppBar(
        backgroundColor: yellowBg,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Pupils',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: jollyBlue,
          ),
        ),
        iconTheme: const IconThemeData(color: jollyBlue),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: jollyBlue,
        onPressed: () {},
        child: const Icon(Icons.add, color: Colors.white),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/mouse_nobg.png",
                      width: 160,
                      height: 160,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      "Based on the world's\nleading literacy programme",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        height: 1.3,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              const Text(
                'Your pupils',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8),

              Expanded(
                child: ListView.builder(
                  itemCount: pupils.length,
                  itemBuilder: (context, index) {
                    final Map<String, String> pupil = pupils[index];
                    final String name = pupil['name'] ?? '';
                    final String group = pupil['group'] ?? '';
                    final String initial = name.isNotEmpty
                        ? name.characters.first
                        : '?';

                    return Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      margin: const EdgeInsets.only(bottom: 12),
                      child: ListTile(
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                        leading: CircleAvatar(
                          backgroundColor: jollyBlue,
                          child: Text(
                            initial,
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        title: Text(
                          name,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF333333),
                          ),
                        ),
                        subtitle: Text(
                          'Group $group',
                          style: const TextStyle(
                            fontSize: 14,
                            color: Color(0xFF666666),
                          ),
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                          color: Color(0xFF666666),
                        ),
                        onTap: () {},
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
