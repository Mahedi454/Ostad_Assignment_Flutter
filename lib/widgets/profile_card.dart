import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  static const cardShadow = [
    BoxShadow(
      color: Color(0x12000000),
      blurRadius: 14,
      offset: Offset(0, 6),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(18, 22, 18, 18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: cardShadow,
        border: Border.all(color: const Color(0xFFE8EAED)),
      ),
      child: Column(
        children: const [
          CircleAvatar(
            radius: 68,
            backgroundColor: Color(0xFFE9EDF2),
            backgroundImage: NetworkImage(
              'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=400&q=80',
            ),
          ),
          SizedBox(height: 14),
          Text(
            'John Doe',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700,
              color: Color(0xFF45515F),
            ),
          ),
          SizedBox(height: 4),
          Text(
            'Flutter Developer',
            style: TextStyle(
              fontSize: 16,
              color: Color(0xFF8B96A3),
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 14),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 26),
            child: Text(
              'Passionate about creating user-friendly and engaging digital experiences.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                height: 1.35,
                color: Color(0xFF5F6975),
              ),
            ),
          ),
          SizedBox(height: 16),
          Divider(height: 1, color: Color(0xFFE8EAED)),
          SizedBox(height: 14),
          ContactRow(
            icon: Icons.email,
            text: 'john.doe@example.com',
          ),
          SizedBox(height: 10),
          ContactRow(
            icon: Icons.call,
            text: '+123 456 7890',
          ),
          SizedBox(height: 18),
          Row(
            children: [
              Expanded(
                child: ActionButton(
                  label: 'Follow',
                  filled: true,
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: ActionButton(
                  label: 'Message',
                  filled: false,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ContactRow extends StatelessWidget {
  const ContactRow({
    super.key,
    required this.icon,
    required this.text,
  });

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: const Color(0xFF434E5A), size: 22),
        const SizedBox(width: 10),
        Text(
          text,
          style: const TextStyle(
            fontSize: 15,
            color: Color(0xFF5D6874),
          ),
        ),
      ],
    );
  }
}

class ActionButton extends StatelessWidget {
  const ActionButton({
    super.key,
    required this.label,
    required this.filled,
  });

  final String label;
  final bool filled;

  @override
  Widget build(BuildContext context) {
    final backgroundColor = filled ? const Color(0xFF0E74E7) : Colors.white;
    final foregroundColor = filled ? Colors.white : const Color(0xFF4D5865);

    return SizedBox(
      height: 46,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7),
            side: BorderSide(
              color: filled ? const Color(0xFF0E74E7) : const Color(0xFFD0D7DF),
            ),
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 15,
            fontWeight: filled ? FontWeight.w700 : FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
