import 'package:hive/hive.dart';

main() async{
  WidgetFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(User)
}