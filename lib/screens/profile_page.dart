import 'package:assignment_ostad/widgets/interest_cards.dart';
import 'package:assignment_ostad/widgets/profile_card.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 470),
              child: const Column(
                children: [
                  ProfileCard(),
                  SizedBox(height: 12),
                  SectionTitle(title: 'Interests'),
                  SizedBox(height: 12),
                  InterestCards(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Row(
        children: [
          const Expanded(
            child: Divider(color: Color(0xFFD6DCE2), thickness: 1),
          ),
          const SizedBox(width: 12),
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Color(0xFF404B58),
            ),
          ),
          const SizedBox(width: 12),
          const Expanded(
            child: Divider(color: Color(0xFFD6DCE2), thickness: 1),
          ),
        ],
      ),
    );
  }
}
