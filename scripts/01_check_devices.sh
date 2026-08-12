#!/bin/bash

echo "=== Serial devices ==="
ls -l /dev/ttyACM* 2>/dev/null

echo
echo "=== Stable USB IDs ==="
ls -l /dev/serial/by-id/ 2>/dev/null

echo
echo "=== Cameras ==="
ls -l /dev/video* 2>/dev/null

echo
echo "Run manually if needed:"
echo "uv run lerobot-find-port"
echo "uv run lerobot-find-cameras opencv"
