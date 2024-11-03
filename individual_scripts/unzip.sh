PACKAGE="unzip"

echo $PACKAGE

# Check if the package is installed
if ! dpkg -l | grep -q "^ii.*$PACKAGE"; then
    echo "$PACKAGE is not installed. Installing..."
    sudo apt update && sudo apt install -y $PACKAGE
else
    echo "$PACKAGE is already installed."
fi
