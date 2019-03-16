class ChatModel {
  final String name;
  final String message;
  final String time;
  final String avatarUrl;

  ChatModel({this.name, this.message, this.time, this.avatarUrl});
}

List<ChatModel> dummyData = [
  new ChatModel(
      name: "Perez",
      message: "Miss you ronaldo",
      time: "15:30",
      avatarUrl:
      "https://www.realmadrid.com/img/vertical_380px/florentino-perez01.jpg"),
  new ChatModel(
      name: "Messi",
      message: "Hey bro whats up??",
      time: "17:30",
      avatarUrl:
      "https://e0.365dm.com/19/03/768x432/skysports-lionel-messi-barcelona_4607375.jpg?20190313202935"),
  new ChatModel(
      name: "Marcelo",
      message: "Miss you bro",
      time: "5:00",
      avatarUrl:
      "https://www.realmadrid.com/img/vertical_380px/12_marcelo_380x501_20180924112449.jpg"),
];
