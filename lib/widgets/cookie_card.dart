import 'package:flutter/material.dart';
import 'package:krumbs/constants/app_colors.dart';
import 'package:krumbs/models/cookie.dart';

class CookieCard extends StatelessWidget {
  const CookieCard({super.key, required this.cookie});

  final Cookie cookie;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 155,
      height: 210,

      child: Stack(
        children: [
          // Container sits at the bottom as the base
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 160,
              decoration: BoxDecoration(
                color: AppColors.card,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(80),
                ),
              ),
              padding: const EdgeInsets.fromLTRB(12, 50, 12, 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    cookie.name,
                    style: const TextStyle(
                      color: AppColors.textPrimary,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Row(
                    children: [
                      Icon(
                        Icons.star_rounded,
                        color: AppColors.primary,
                        size: 13,
                      ),
                      SizedBox(width: 4),
                      Text(
                        'PREMIUM',
                        style: TextStyle(
                          color: AppColors.primary,
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${cookie.price.toInt()} USD',
                        style: const TextStyle(
                          color: AppColors.textPrimary,
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          Positioned(
            bottom: 0,
            right: 10,
            child: Container(
              width: 45,
              height: 45,
              decoration: const BoxDecoration(
                color: AppColors.dark,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.arrow_forward,
                color: AppColors.textPrimary,
                size: 14,
              ),
            ),
          ),

          // Image rendered last so it paints on top of the container
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Center(
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  // Shadow layer behind the image
                  Container(
                    width: 80,
                    height: 16,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 12,
                          spreadRadius: 4,
                        ),
                      ],
                    ),
                  ),

                  Image.asset(cookie.image, height: 120, fit: BoxFit.contain),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
