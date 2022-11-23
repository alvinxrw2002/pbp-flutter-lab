import 'package:pbp_flutter_lab/page/drawer.dart';
import 'package:pbp_flutter_lab/model/mywatchlist.dart';
import 'package:pbp_flutter_lab/page/mywatchlist_detail.dart';
import 'package:flutter/material.dart';
import 'package:pbp_flutter_lab/page/fetch_mywatchlist.dart';

class MyWatchListPage extends StatefulWidget {
  const MyWatchListPage({super.key});
  static bool hasFetched = true;
  @override
  State<MyWatchListPage> createState() => _MyWatchListPageState();
}

class _MyWatchListPageState extends State<MyWatchListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Watch List'),
      ),
      drawer: const Drwr(),
      body: FutureBuilder(
        future: fetchMyWatchList(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return const Center(child: CircularProgressIndicator());
          } else {
            if (!snapshot.hasData) {
              return const Center(
                child: Text("Watchlist kosong"),
              );
            } else {
              if (MyWatchListPage.hasFetched) {
                MyWatchList.watchList = snapshot.data!;
                MyWatchListPage.hasFetched = false;
              }
              return ListView.builder(
                padding: const EdgeInsets.symmetric(
                  horizontal: 0,
                  vertical: 20,
                ),
                itemCount: MyWatchList.watchList.length,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => WatchListDetail(
                              watchList: MyWatchList.watchList[index])),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.0),
                      boxShadow: [
                        BoxShadow(
                            color:
                                MyWatchList.watchList[index].fields.watched ==
                                        "V"
                                    ? Colors.green
                                    : Colors.red,
                            blurRadius: 2.0)
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(MyWatchList.watchList[index].fields.title),
                        Checkbox(
                          value: MyWatchList.watchList[index].fields.watched ==
                              "V",
                          onChanged: (bool? value) {
                            setState(() {
                              if (MyWatchList.watchList[index].fields.watched ==
                                  "V") {
                                MyWatchList.watchList[index].fields.watched =
                                    "X";
                              } else {
                                MyWatchList.watchList[index].fields.watched =
                                    "V";
                              }
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }
          }
        },
      ),
    );
  }
}
