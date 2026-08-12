cd ~/lerobot-v060

{
  echo "LeRobot"
  echo "======="
  echo "Version:"
  git describe --tags --always --dirty
  echo
  echo "Commit:"
  git rev-parse HEAD
  echo
  echo "Git status:"
  git status --short
  echo
  echo "Python:"
  python --version
  echo
  echo "OS:"
  lsb_release -ds
}
