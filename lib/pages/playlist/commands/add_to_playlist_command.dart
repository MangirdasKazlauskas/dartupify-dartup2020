import 'package:meta/meta.dart';

import 'package:dartupify/domain/models/index.dart';
import 'package:dartupify/pages/playlist/commands/base/playlist_command.dart';
import 'package:dartupify/pages/playlist/memento/index.dart';

class AddToPlaylistCommand extends PlaylistCommand {
  final Song song;

  AddToPlaylistCommand({
    @required Originator originator,
    @required this.song,
  }) : super(originator);

  @override
  Playlist execute() {
    var playlist = backup.getState();

    return playlist.copyWith(songs: [...playlist.songs]..add(song));
  }
}
