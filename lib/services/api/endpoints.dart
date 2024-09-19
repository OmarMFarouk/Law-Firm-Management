class ApiEndPoints {
  static const String baseUrl = 'https://mars-store.site/lawyer/public';

  // clients
  static const String showClientsDropDown =
      '$baseUrl/clients/show_clients_dropdown.php';
  static const String showClients = '$baseUrl/clients/show_clients.php';
  static const String addClient = '$baseUrl/clients/add_client.php';

  // Cases
  static const String showCases = '$baseUrl/cases/show_cases.php';
  static const String showCaseFiles = '$baseUrl/cases/show_case_files.php';
  static const String addCaseFile = '$baseUrl/cases/add_case_file.php';
  static const String addCase = '$baseUrl/cases/add_case.php';
}
