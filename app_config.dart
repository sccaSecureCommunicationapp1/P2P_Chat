import 'dart:math';

class AppConfig {
  // App ki basic details
  static const String appName = "PK Chat";
  static const String appVersion = "1.0.0";
  
  // Unique ID generator (Jo sirf aik dafa banegi aur 11 digits ki hogi)
  // Yeh ID username badalne par bhi change nahi hogi.
  static String generateUniqueId() {
    Random random = Random();
    String id = "";
    // 11 digits ka number generate karne ke liye
    for (int i = 0; i < 11; i++) {
      id += random.nextInt(10).toString();
    }
    return id;
  }

  // Username validation (Maximum 12 letters tak ki ijazat)
  static bool validateUsername(String username) {
    if (username.trim().isEmpty) return false;
    if (username.length > 12) {
      return false; // Naam 12 letters se lamba nahi ho sakta
    }
    return true;
  }
}
