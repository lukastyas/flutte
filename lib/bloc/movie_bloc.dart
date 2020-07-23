import 'package:equatable/equatable.dart';
import 'package:flutte/models/models.dart';
import 'package:flutte/services/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'movie_state.dart';
part 'movie_event.dart';

class MovieBloc extends Bloc<MovieEvent, MovieState> {
  @override
  MovieState get initialState => MovieInitial();

  @override
  Stream<MovieState> mapEventToState(
      MovieEvent event,
      ) async* {
    if (event is FetchMovies) {
      List<Movie> movies = await MovieServices.getMovies(1);

      yield MovieLoaded(
          movies: movies
              .where((element) =>
          !element.title.toLowerCase().contains('365') &&
              !element.title.toLowerCase().contains('bois'))
              .toList());
    }
  }
}