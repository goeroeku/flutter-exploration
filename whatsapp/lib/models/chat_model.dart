class ChatModel {
  final String name;
  final String message;
  final String time;
  final String avatarUrl;

  ChatModel({this.name, this.message, this.time, this.avatarUrl});
}

List<ChatModel> dummyData = [
  ChatModel(
      name: "Indra Hehe Aja",
      message: "Hay gaesss !!!",
      time: "07.10",
      avatarUrl:
          "https://cdn.pixabay.com/photo/2018/08/28/12/41/avatar-3637425_960_720.png"),
  ChatModel(
      name: "Goeroeku",
      message: "Semangat coding flutter !!! #101daysflutter #onedayoneapk",
      time: "17.10",
      avatarUrl: "https://avatars1.githubusercontent.com/u/11331745?s=460&v=4"),
  ChatModel(
      name: "Big Bos",
      message: "Proyek boss ...",
      time: "21.10",
      avatarUrl:
          "https://cdn.pixabay.com/photo/2013/07/13/10/07/man-156584_960_720.png"),
  ChatModel(
      name: "Erlang Corp",
      message: "Babehhhh...",
      time: "00.10",
      avatarUrl:
          "https://cdn.pixabay.com/photo/2019/04/06/17/46/teddy-4107881_960_720.jpg"),
];
