# HelloBuddy

A SwiftUI implementation of a subscription upgrade plan interface.

## Overview
This project implements a UI layout based on provided Figma designs, focusing on promoting subscription upgrade plans across iOS devices.

## Architecture

The project follows a modular structure to maintain clean separation of concerns:

### Views
- `ContentView`: Main container view
- Specialized sub-view structs for different UI components
- Each view is self-contained and focuses on a specific UI element

### Utils
Utility structures and classes that:
- Provide helper functions
- Handle common calculations
- Maintain stateless operations

### Extensions
Custom extensions to SwiftUI and UIKit components that:
- Enhance core functionality

## Technical Notes

### Design Implementation
Due to limited Figma access:
- Colors were sampled using Digital Color Meter
- Dimensions were measured using Free Ruler
- All measurements are approximate but maintain design fidelity

### Cross-Device Support
- Primary design targets iPhone
- Layout adapts responsively across different screen sizes
- Only support portrait mode

### Constants Management
- Currently, fonts and dimensions are defined inline within the same file due to the single-page design. For a multi-page project, these values would ideally be separated into dedicated files for easier maintenance.

## Future Improvements
- Leverage Figma’s "Dev Mode" to specify exact sizes and colors.  
- Implement a design token system for consistent styling.  
- Optimize layouts specifically for iPad devices in the landscape mode.
