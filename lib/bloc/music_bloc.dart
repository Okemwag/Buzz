import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

abstract class MusicEvent extends Equatable {
  const MusicEvent();
}

abstract class MusicState extends Equatable {
  const MusicState();
}

class MusicBloc extends Bloc<MusicEvent, MusicState> {
  @override
  MusicState get initialState => InitialMusicState();

  @override
  Stream<MusicState> mapEventToState(
    MusicEvent event,
  ) async* {
    if (event is LoadSongsEvent) {
      List<String> songs = ['Song 1', 'Song 2', 'Song 3'];
      yield SongsLoadedState(songs);
    }
  }
}
