import 'package:mix/mix.dart';
// This kinda follows the Material color naming scheme
// Information https://m2.material.io/design/color/the-color-system.html#color-theme-creation

// Tokens for colors
// The most for the theme of the app

// Used for button elements
const buttonColor = ColorToken('button-color'); // General color button actions
const buttonVariantColor = ColorToken(
  'button-variant-color',
); // Variants for hover/pressed states of button actions

// Used for informational messages
const informationalColor = ColorToken(
  'informational-color',
); // Color for informational messages
const informationalVariantColor = ColorToken(
  'informational-variant-color',
); // Variants of informational color for different contexts

// Background colors
const backgroundColor = ColorToken('background-color'); // Main background color
const backgroundVariantColor = ColorToken(
  'background-variant-color',
); // Variants for background
const errorColor = ColorToken('error-color'); // Color for error messages
const warningColor = ColorToken('warning-color'); // Color for warnings
const debugColor = ColorToken('debug-color'); // Color for debugging UI

// Category colors
const glutenColor = ColorToken(
  'gluten-color',
); // Color for micro and macro elements
const lactoseColor = ColorToken('lactose-color'); // Color for invertebrates
const nutsColor = ColorToken('nuts-color'); // Color for vertebrates

// Text and Icons colors
// On action Colors
const onButtonColor = ColorToken(
  'on-button-color',
); // Text/icons color on action backgrounds
const onInformationalActionColor = ColorToken(
  'on-informational-action-color',
); // Text/icons color on informational action backgrounds

// Generic on colors
const onInformationalColor = ColorToken(
  'on-informational-color',
); // Text/icons color on informational message backgrounds
const onBackgroundColor = ColorToken(
  'on-background-color',
); // Text/icons color on primary background color
const onErrorColor = ColorToken(
  'on-error-color',
); // Text/icons color on error backgrounds
const onWarningColor = ColorToken(
  'on-warning-color',
); // Text/icons color on warning backgrounds
const onDebugColor = ColorToken(
  'on-debug-color',
); // Text/icons color on debug backgrounds

// Tokens for spacing
const smallSpace = SpaceToken('small-space'); // Small spacing token
const mediumSpace = SpaceToken('medium-space'); // Medium spacing token
const largeSpace = SpaceToken('large-space'); // Large spacing token
const extraLargeSpace = SpaceToken(
  'extra-large-space',
); // Extra large spacing token

// Font styles
// Text sizes are in cm
const h1Font = TextStyleToken('h1-font'); // Font style for heading 1
const h2Font = TextStyleToken('h2-font'); // Font style for heading 2
const bodyFont = TextStyleToken('body-font'); // Font style for body text
const captionFont = TextStyleToken('caption-font'); // Font style for captions
const buttonFont = TextStyleToken('button-font'); // Font style for buttons

// Tokens for custom radii
// They are weird and only work with <radius size>.resolve(context).x
// Don't forget the x
const smallRadius = RadiusToken('small-radius'); // Small custom radius
const largeRadius = RadiusToken('large-radius'); // Large custom radius
