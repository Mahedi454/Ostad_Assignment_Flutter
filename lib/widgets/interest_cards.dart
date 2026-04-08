import 'package:flutter/material.dart';

class InterestCards extends StatelessWidget {
  const InterestCards({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isCompact = constraints.maxWidth < 420;

        if (isCompact) {
          return const Column(
            children: [
              InterestCard(
                title: 'Travel',
                description: 'Exploring new places around the world',
                imageUrl:
                    'https://images.unsplash.com/photo-1507525428034-b723cf961d3e?auto=format&fit=crop&w=900&q=80',
              ),
              SizedBox(height: 12),
              InterestCard(
                title: 'Photography',
                description: 'Capturing moments through the lens',
                imageUrl:
                    'https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&w=900&q=80',
              ),
            ],
          );
        }

        return const Row(
          children: [
            Expanded(
              child: InterestCard(
                title: 'Travel',
                description: 'Exploring new places around the world',
                imageUrl:
                    'https://images.unsplash.com/photo-1507525428034-b723cf961d3e?auto=format&fit=crop&w=900&q=80',
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              child: InterestCard(
                title: 'Photography',
                description: 'Capturing moments through the lens',
                imageUrl:
                    'https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&w=900&q=80',
              ),
            ),
          ],
        );
      },
    );
  }
}

class InterestCard extends StatelessWidget {
  const InterestCard({
    super.key,
    required this.title,
    required this.description,
    required this.imageUrl,
  });

  final String title;
  final String description;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFE8EAED)),
        boxShadow: const [
          BoxShadow(
            color: Color(0x10000000),
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: AspectRatio(
              aspectRatio: 1.7,
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Color(0xFF3F4955),
              ),
            ),
          ),
          const SizedBox(height: 4),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: Text(
              description,
              style: const TextStyle(
                fontSize: 14,
                height: 1.3,
                color: Color(0xFF6E7782),
              ),
            ),
          ),
          const SizedBox(height: 14),
          SizedBox(
            width: double.infinity,
            height: 42,
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Color(0xFFE1E6EC)),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                backgroundColor: const Color(0xFFF8FAFC),
              ),
              child: const Text(
                'View More',
                style: TextStyle(
                  color: Color(0xFF0E74E7),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
