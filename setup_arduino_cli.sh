#!/bin/bash
set -e

echo "Downloading and installing Arduino CLI..."
# Installs arduino-cli to ./bin by default
curl -fsSL https://raw.githubusercontent.com/arduino/arduino-cli/master/install.sh | sh

# Use the installed binary directly
ARDUINO_CLI="./bin/arduino-cli"

echo "Updating core index..."
$ARDUINO_CLI core update-index

echo "Installing arduino:avr core..."
$ARDUINO_CLI core install arduino:avr

echo "Installing libraries..."
$ARDUINO_CLI lib install "DHT sensor library"
$ARDUINO_CLI lib install "Servo"
$ARDUINO_CLI lib install "LiquidCrystal"
$ARDUINO_CLI lib install "IRremote"
$ARDUINO_CLI lib install "Adafruit NeoPixel"

echo "Setup complete! You can run arduino commands using ./bin/arduino-cli"