import 'package:supabase_flutter/supabase_flutter.dart';

addUser(Map body) async {
  final supabase = Supabase.instance.client;
  final insert = await supabase.from("users").insert(body).select();
}
