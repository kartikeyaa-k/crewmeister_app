class EnvironmentConfig {
  static String get baseUrl => const String.fromEnvironment(
    'BASE_URL',
    defaultValue: 'https://absence-manager-api-4245.onrender.com',
  );
}
