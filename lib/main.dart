import 'package:flutter/material.dart';

import 'detailview.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CryptoStream',
      theme: ThemeData(),
      home: const MyHomePage(title: 'CryptoStream'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  bool _searchSelected = true;
  double marginTabLine = 97; //17 97
  final myController = TextEditingController();
  late TabController _tabController;
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<String> entries2 = <String>['D', 'F', 'G'];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  void appBarChange() {
    setState(() {
      _searchSelected = !_searchSelected;
    });
  }

  void marginChange({required double value}) {
    setState(() {
      marginTabLine = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(100),
            child: _searchSelected
                ? _searchAppBar(context)
                : _defulatAppBar(context)),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 1.5,
              width: 450,
              color: Colors.white10,
              margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '?????????',
                    style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.white30,
                        fontFamily: 'PretendardExtraBold',
                        fontWeight: FontWeight.normal),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '?????????',
                    style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.white30,
                        fontFamily: 'PretendardExtraBold',
                        fontWeight: FontWeight.normal),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '????????????',
                    style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.white30,
                        fontFamily: 'PretendardExtraBold',
                        fontWeight: FontWeight.normal),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '????????????',
                    style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.white30,
                        fontFamily: 'PretendardExtraBold',
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ],
            ),
            Container(
              height: 1.5,
              width: 450,
              color: Colors.white10,
              margin: EdgeInsets.fromLTRB(0, 3, 0, 0),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: <Widget>[
                  ListView.separated(
                    padding: const EdgeInsets.all(8),
                    itemCount: entries.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 50,
                        color: Colors.black54,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextButton(
                                  onPressed: () => {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => DetailApp()))
                                  },
                                  child: Text(
                                    'Entry ${entries[index]}',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                TextButton(
                                    onPressed: () => {
                                          print('Entry ${entries[index]}'),
                                        },
                                    child: Text(
                                      'Entry ${entries[index]}',
                                      style: TextStyle(color: Colors.white),
                                    )),
                                TextButton(
                                    onPressed: () => {
                                          print('Entry ${entries[index]}'),
                                        },
                                    child: Text(
                                      'Entry ${entries[index]}',
                                      style: TextStyle(color: Colors.white),
                                    )),
                                TextButton(
                                    onPressed: () => {
                                          print('Entry ${entries[index]}'),
                                        },
                                    child: Text(
                                      'Entry ${entries[index]}',
                                      style: TextStyle(color: Colors.white),
                                    )),
                              ]),
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                        const Divider(
                      color: Colors.white38,
                    ),
                  ),
                  ListView.separated(
                    padding: const EdgeInsets.all(8),
                    itemCount: entries2.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 50,
                        color: Colors.black54,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextButton(
                                  onPressed: () => {
                                    print('Entry ${entries2[index]}'),
                                  },
                                  child: Text(
                                    'Entry ${entries2[index]}',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                TextButton(
                                    onPressed: () => {
                                          print('Entry ${entries2[index]}'),
                                        },
                                    child: Text(
                                      'Entry ${entries2[index]}',
                                      style: TextStyle(color: Colors.white),
                                    )),
                                TextButton(
                                    onPressed: () => {
                                          print('Entry ${entries2[index]}'),
                                        },
                                    child: Text(
                                      'Entry ${entries2[index]}',
                                      style: TextStyle(color: Colors.white),
                                    )),
                                TextButton(
                                    onPressed: () => {
                                          print('Entry ${entries2[index]}'),
                                        },
                                    child: Text(
                                      'Entry ${entries2[index]}',
                                      style: TextStyle(color: Colors.white),
                                    )),
                              ]),
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                        const Divider(
                      color: Colors.white38,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _defulatAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: const Text(
        'CryptoStream',
        style: TextStyle(
            fontSize: 18.0,
            color: Colors.white,
            fontFamily: 'PretendardExtraBold',
            fontWeight: FontWeight.normal),
      ),
      bottom: TabBar(
        indicatorColor: Colors.white,
        controller: _tabController,
        padding: const EdgeInsets.fromLTRB(0, 0, 290, 0),
        tabs: const [
          Tab(
            icon: Text(
              '??????',
              style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                  fontFamily: 'PretendardExtraBold',
                  fontWeight: FontWeight.normal),
            ),
          ),
          Tab(
            icon: Text(
              '??????',
              style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                  fontFamily: 'PretendardExtraBold',
                  fontWeight: FontWeight.normal),
            ),
          )
        ],
      ),
      actions: [
        IconButton(
          icon: Image.asset('images/searchbtn.png'),
          onPressed: () => appBarChange(),
        ),
        IconButton(
          icon: Image.asset('images/settingbtn.png'),
          onPressed: () => showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(content: Text(myController.text));
            },
          ),
        ),
      ],
    );
  }

  Widget _searchAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: TextField(
        controller: myController,
        style: const TextStyle(
            fontSize: 18.0,
            color: Colors.white,
            fontFamily: 'PretendardBlack',
            fontWeight: FontWeight.normal),
        decoration: const InputDecoration(
          hintText: 'Search',
          hintStyle: TextStyle(
              fontSize: 18.0,
              color: Colors.white38,
              fontFamily: 'PretendardBlack',
              fontWeight: FontWeight.normal),
        ),
      ),
      bottom: TabBar(
        indicatorColor: Colors.white,
        controller: _tabController,
        padding: const EdgeInsets.fromLTRB(0, 0, 290, 0),
        onTap: null,
        tabs: const [
          Tab(
            icon: Text(
              '??????',
              style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                  fontFamily: 'PretendardExtraBold',
                  fontWeight: FontWeight.normal),
            ),
          ),
          Tab(
            icon: Text(
              '??????',
              style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                  fontFamily: 'PretendardExtraBold',
                  fontWeight: FontWeight.normal),
            ),
          ),
        ],
      ),
      leading: IconButton(
        icon: Image.asset('images/searchbtn.png'),
        onPressed: () => SearchWord(text: myController.text),
      ),
      actions: [
        IconButton(
            icon: Image.asset('images/cancelbtn.png'),
            onPressed: () => appBarChange()),
      ],
    );
  }

  void SearchWord({required String text}) {
    print(text);
  }
}

Map<String, String> coinCodeToCoinName = {
  'BTC': '????????????',
  'ETH': '????????????',
  'LTC': '???????????????',
  'ETC': '?????????????????????',
  'XRP': '??????',
  'BCH': '??????????????????',
  'QTUM': '??????',
  'BTG': '??????????????????',
  'EOS': '?????????',
  'ICX': '?????????',
  'TRX': '??????',
  'ELF': '??????',
  'OMG': '????????????',
  'KNC': '?????????',
  'GLM': '??????',
  'ZIL': '?????????',
  'WAXP': '??????',
  'POWR': '????????????',
  'LRC': '?????????',
  'STEEM': '??????',
  'STRAX': '???????????????',
  'ZRX': '????????????',
  'REP': '??????',
  'XEM': '???',
  'SNT': '?????????????????????????????????',
  'ADA': '?????????',
  'CTXC': '????????????',
  'BAT': '????????????????????????',
  'WTC': '????????????',
  'THETA': '????????????',
  'LOOM': '???????????????',
  'WAVES': '?????????',
  'TRUE': '????????????',
  'LINK': '????????????',
  'ENJ': '????????????',
  'DOGE': '????????????',
  'VET': '?????????',
  'MTL': '??????',
  'TMTG': '???????????????????????????',
  'QKC': '????????????',
  'HDAC': '????????????',
  'AMO': '????????????',
  'BSV': '????????????????????????',
  'DAC': '?????????',
  'ORBS': '?????????',
  'TFUEL': '????????????',
  'VALOR': '????????????',
  'CON': '??????',
  'ANKR': '??????',
  'MIX': '????????????',
  'CRO': '?????????????????????',
  'FX': '????????????',
  'CHR': '????????????',
  'MBL': '????????????',
  'IOST': '????????????',
};
