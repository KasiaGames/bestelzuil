import 'package:flutter/material.dart';
import 'package:mix/mix.dart';

import '../constants.dart';
import '../theme_tokens.dart';

/// A button widget.
///
/// This widget displays a button
///
/// Example:
/// ```dart
/// ScalingButton(
///   onPressed: () {},
///   style: someStyle,
///   child: Text('Click me'),
/// )
/// ```
class Button extends StatelessWidget {
  /// Creates a [Button].
  const Button({
    super.key,
    required this.onPressed,
    required this.style,
    required this.child,
    this.pressed = false,
  });

  /// Callback triggered when the button is pressed.
  final GestureTapCallback onPressed;

  /// Style object for customizing the button's appearance.
  final Style style;

  /// The widget displayed at the center of the button (e.g., text or icon).
  final Widget child;

  /// Indicates whether the button is in a pressed state.
  final bool pressed;

  @override
  Widget build(BuildContext context) {
    return Pressable(
      onPress: onPressed,

      // Use row to put things in the center
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,

        // FlexBox makes the it so the children grow based on size
        children: [
          FlexBox(
            // Making it invisible because i only want to see the children
            style: style.add($box.color(const Color.fromARGB(0, 0, 0, 0))),
            direction: Axis.horizontal,
            children: [
              // Left part
              Box(
                // Making the box not fill the entire width of the screen
                style: style.add(
                  $box.width(Constants.appBodyWidth(context) / 10),
                  $box.borderRadius.right(0),
                ),
                child: const Text(""),
              ),

              // Main part this contains the text or icon
              Box(style: style.add($box.borderRadius.all(0)), child: child),

              // Right part
              Box(
                // Making the box not fill the entire width of the screen
                style: style.add(
                  $box.width(Constants.appBodyWidth(context) / 10),
                  $box.borderRadius.left(0),
                ),
                child: const Text(""),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
