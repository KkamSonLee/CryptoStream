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
                    '코인명',
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
                    '현재가',
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
                    '전일대비',
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
                    '거래대금',
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
              '전체',
              style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                  fontFamily: 'PretendardExtraBold',
                  fontWeight: FontWeight.normal),
            ),
          ),
          Tab(
            icon: Text(
              '관심',
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
              '전체',
              style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                  fontFamily: 'PretendardExtraBold',
                  fontWeight: FontWeight.normal),
            ),
          ),
          Tab(
            icon: Text(
              '관심',
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
  'BTC': '비트코인',
  'ETH': '이더리움',
  'LTC': '라이트코인',
  'ETC': '이더리움클래식',
  'XRP': '리플',
  'BCH': '비트코인캐시',
  'QTUM': '퀀텀',
  'BTG': '비트코인골드',
  'EOS': '이오스',
  'ICX': '아이콘',
  'TRX': '트론',
  'ELF': '엘프',
  'OMG': '오미세고',
  'KNC': '카이버',
  'GLM': '골렘',
  'ZIL': '질리카',
  'WAXP': '왁스',
  'POWR': '파워렛저',
  'LRC': '루프링',
  'STEEM': '스팀',
  'STRAX': '스트라티스',
  'ZRX': '제로엑스',
  'REP': '어거',
  'XEM': '넴',
  'SNT': '스테이터스네트워크토큰',
  'ADA': '에이다',
  'CTXC': '코르텍스',
  'BAT': '베이직어텐션토큰',
  'WTC': '월튼체인',
  'THETA': '쎄타토큰',
  'LOOM': '룸네트워크',
  'WAVES': '웨이브',
  'TRUE': '트루체인',
  'LINK': '체인링크',
  'ENJ': '엔진코인',
  'DOGE': '도지코인',
  'VET': '비체인',
  'MTL': '메탈',
  'TMTG': '더마이다스터치골드',
  'QKC': '쿼크체인',
  'HDAC': '에이치닥',
  'AMO': '아모코인',
  'BSV': '비트코인에스브이',
  'DAC': '다빈치',
  'ORBS': '오브스',
  'TFUEL': '쎄타퓨엘',
  'VALOR': '벨러토큰',
  'CON': '코넌',
  'ANKR': '앵커',
  'MIX': '믹스마블',
  'CRO': '크립토닷컴체인',
  'FX': '펑션엑스',
  'CHR': '크로미아',
  'MBL': '무비블록',
  'IOST': '이오스트',
};
