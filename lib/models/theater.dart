part of 'models.dart';

class Theater extends Equatable {
  String name;

  Theater(this.name);

  @override
  List<Object> get props => [name];
}

List<Theater> dummyTheaters = [
  Theater("CGV 23 Paskal Hyper Square"),
  Theater("CGV Paris Van Java"),
  Theater("XXI Cihampelas Wlak"),
  Theater("XXI Bandung Trade Center"),
];
