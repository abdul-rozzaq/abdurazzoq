
# Android SDK and Java Installation Script

This Bash script automates the process of installing and configuring the Android SDK (with `sdkmanager`) and OpenJDK 17 on a Linux-based system. It is particularly useful for setting up the Android development environment quickly.

### Features:
- Installs and configures Android SDK tools.
- Configures environment variables for Android SDK and tools.
- Installs OpenJDK 17 (JDK and JRE) for Android development.

### Requirements:
- Linux system (Ubuntu/Debian-based).
- `wget`, `unzip`, and `sudo` installed on your machine.
- A terminal that supports Bash scripts.

### How to Use:
1. Clone this repository or download the script to your machine.
2. Open a terminal window in the directory where the script is located.
3. Give the script execution permissions:
   ```bash
   chmod +x android-sdk-java-install.sh
   ```
4. Run the script:
   ```bash
   ./android-sdk-java-install.sh
   ```

5. The script will show a menu with the following options:
    1. **Install and Configure SDK Manager**: Downloads and installs Android SDK tools, configures environment variables, and optionally installs `platform-tools` and `build-tools`.
    2. **Install Java (JDK and JRE) 17**: Installs OpenJDK 17 (JDK and JRE).

6. Choose an option by entering the corresponding number.

7. After installation, the script will suggest installing `platform-tools` and `build-tools`. You can install them by entering `1`, or skip by entering `0`.

### Script Details:
- **SDK Manager**: The script downloads the Android SDK command-line tools and sets them up in the `~/.android/cmdline-tools/` directory.
- **Environment Variables**: The script updates your `.bashrc` and `.zshrc` files to include the necessary paths for Android SDK tools.
- **Java Installation**: The script installs OpenJDK 17 packages (`openjdk-17-jdk` and `openjdk-17-jre`) required for Android development.

### Example Usage:

```bash
./android-sdk-java-install.sh
```

The script will present the following menu options:

```bash
Select item please:
1) Install and Configure SDK Manager
2) Install Java (JDK and JRE) 17
3) Quit
```

Choose option `1` to install and configure the SDK Manager, or choose option `2` to install Java (JDK and JRE) 17.

### Notes:
- The script modifies the `.bashrc` and `.zshrc` files to include the necessary environment variables for Android SDK tools.
- You need to restart your terminal or source the updated configuration files (`source ~/.bashrc` or `source ~/.zshrc`) for the changes to take effect.

### License:
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
