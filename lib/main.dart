import 'package:crewmeister_app/bootstrap.dart';
import 'package:crewmeister_app/crewmeister_app.dart';

void main() async {
  await bootstrap(() async {
    return const CrewmeisterApp();
  });
}
