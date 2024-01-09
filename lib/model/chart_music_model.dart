import 'dart:convert';

ChartMusicModel chartMusicModelFromJson(String str) => ChartMusicModel.fromJson(json.decode(str));

String chartMusicModelToJson(ChartMusicModel data) => json.encode(data.toJson());

class ChartMusicModel {
    Data data;

    ChartMusicModel({
        required this.data,
    });

    factory ChartMusicModel.fromJson(Map<String, dynamic> json) => ChartMusicModel(
        data: Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "data": data.toJson(),
    };
}

class Data {
    int id;
    String name;
    int week;
    int year;
    List<SongElement> songs;

    Data({
        required this.id,
        required this.name,
        required this.week,
        required this.year,
        required this.songs,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        name: json["name"],
        week: json["week"],
        year: json["year"],
        songs: List<SongElement>.from(json["songs"].map((x) => SongElement.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "week": week,
        "year": year,
        "songs": List<dynamic>.from(songs.map((x) => x.toJson())),
    };
}

class SongElement {
    int position;
    SongSong song;

    SongElement({
        required this.position,
        required this.song,
    });

    factory SongElement.fromJson(Map<String, dynamic> json) => SongElement(
        position: json["position"],
        song: SongSong.fromJson(json["song"]),
    );

    Map<String, dynamic> toJson() => {
        "position": position,
        "song": song.toJson(),
    };
}

class SongSong {
    int id;
    int artistId;
    String artistName;
    String artistProfilePicture;
    String title;
    String? spotifyUrl;
    String? appleMusicUrl;

    SongSong({
        required this.id,
        required this.artistId,
        required this.artistName,
        required this.artistProfilePicture,
        required this.title,
        required this.spotifyUrl,
        required this.appleMusicUrl,
    });

    factory SongSong.fromJson(Map<String, dynamic> json) => SongSong(
        id: json["id"],
        artistId: json["artist_id"],
        artistName: json["artist_name"],
        artistProfilePicture: json["artist_profile_picture"],
        title: json["title"],
        spotifyUrl: json["spotify_url"],
        appleMusicUrl: json["apple_music_url"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "artist_id": artistId,
        "artist_name": artistName,
        "artist_profile_picture": artistProfilePicture,
        "title": title,
        "spotify_url": spotifyUrl,
        "apple_music_url": appleMusicUrl,
    };
}
