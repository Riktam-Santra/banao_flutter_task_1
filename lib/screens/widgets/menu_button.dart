import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 3, top: 9, bottom: 8),
      child: InkWell(
        borderRadius: BorderRadius.circular(50),
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 2,
                width: 18,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(147, 156, 163, 1),
                  borderRadius: BorderRadius.circular(1),
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              Container(
                height: 2,
                width: 9,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(147, 156, 163, 1),
                  borderRadius: BorderRadius.circular(1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
