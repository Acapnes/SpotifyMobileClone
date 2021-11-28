class musics{
  int id;
  String singerName;
  String songName;
  String description;
  String population;
  String avatarPath;
  bool isPlaying = false;

  musics({this.singerName,this.songName,this.description,this.id,this.population,this.isPlaying,this.avatarPath});
}

List<musics> singers = [
  musics(id:1,singerName : "Drake",songName:"ÖRNEK15",description: "Selam",isPlaying:true,avatarPath: "assets/drake.jpg"),
  musics(id:1,singerName : "Post Malone",songName:"ÖRNEK",description: "Selam",isPlaying:false,avatarPath: "assets/postmalone.png"),
  musics(id:1,singerName : "Ddrake",songName:"ÖRNEK26",description: "Selam",isPlaying:false,avatarPath: "assets/drake.jpg"),
  musics(id:1,singerName : "Post Malone",songName:"ÖRNEK5",description: "Selam",isPlaying:false,avatarPath: "assets/postmalone.png"),
  musics(id:1,singerName : "Drake",songName:"ÖRNEK4",description: "Selam",isPlaying:false,avatarPath: "assets/drake.jpg"),
  musics(id:1,singerName : "Post Malone",songName:"ÖRNEK1",description: "Selam",isPlaying:true,avatarPath: "assets/postmalone.png"),
  musics(id:1,singerName : "Post Malone",songName:"ÖRNEK2",description: "Selam",isPlaying:true,avatarPath: "assets/postmalone.png"),
  musics(id:1,singerName : "Post Malone",songName:"ÖRNEK1",description: "Selam",isPlaying:true,avatarPath: "assets/postmalone.png"),
];