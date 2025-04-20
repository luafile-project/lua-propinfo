# lua-propinfo

A FiveM resource that provides prop information and position copying functionality using ox_target and ox_lib.

## Features

- Get detailed information about props/objects
- Copy Vector3 and Vector4 coordinates to clipboard
- Get player position in Vector3 and Vector4 format
- Clean and intuitive UI notifications
- Easy-to-use target system integration

## Dependencies

- [ox_lib](https://github.com/overextended/ox_lib)
- [ox_target](https://github.com/overextended/ox_target)

## Installation

1. Ensure you have the required dependencies installed
2. Place the resource in your server's resources directory
3. Add the following to your `server.cfg`:
```cfg
ensure ox_lib
ensure ox_target
ensure lua-propinfo
```

## Usage

### Prop Information
- Target any prop/object in the game
- Select "Prop Info" from the context menu
- View prop information including:
  - Model Name
  - Model Hash
  - Vector3 coordinates
  - Vector4 coordinates (including heading)

### Player Position
- Use the target menu on yourself
- Choose between:
  - "Copy Vector3" - Copies your current position as Vector3
  - "Copy Vector4" - Copies your current position as Vector4 (including heading)

## Configuration

The resource is ready to use out of the box. No additional configuration is required.

## Notes

- Vector3/Vector4 coordinates are automatically adjusted (z-1.0) for better placement
- All coordinates are formatted with 3 decimal places for precision
- Notifications will appear when coordinates are copied to clipboard

