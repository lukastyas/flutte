part of 'extensions.dart';

extension FirebaseUserExtension on FirebaseUser {
  User convertToUser(
          {String name = "No Name",
          List<String> selectedGenre,
          String selectedLanguage,
          int balance = 50000}) =>
      User(this.uid, this.email,
          name: name,
          balance: balance,
          selectedGenres: selectedGenre,
          selectedLanguage: selectedLanguage);

  Future<User> fromFireStore() async => await UserServices.getUser(this.uid);
}
