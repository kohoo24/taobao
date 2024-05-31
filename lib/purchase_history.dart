import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:taobaocopyapp/detail_page.dart';
import 'package:taobaocopyapp/detail_page01.dart';
import 'package:taobaocopyapp/detail_page02.dart';
import 'package:taobaocopyapp/widgets/detail_page03.dart';
import 'package:taobaocopyapp/widgets/detail_page04.dart';
import 'package:taobaocopyapp/widgets/detail_page05.dart';
import 'package:taobaocopyapp/widgets/purchase_history_box.dart';
import 'package:taobaocopyapp/widgets/purchase_history_double_box.dart';

class PurchaseHistory extends StatelessWidget {
  const PurchaseHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        backgroundColor: const Color(0xfff2f2f2),
        appBar: AppBar(
          leadingWidth: MediaQuery.of(context).size.width,
          backgroundColor: const Color(0xfff2f2f2),
          elevation: 0,
          automaticallyImplyLeading: false,
          title: PreferredSize(
            preferredSize: const Size.fromHeight(128.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 36,
                      height: 36,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffffffff),
                      ),
                      child: IconButton(
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                          size: 20,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Container(
                        height: 36,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          color: const Color(0xffe8e8e8),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.symmetric(vertical: 0.0),
                            hintText: '搜索订单',
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.grey.shade600,
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      height: 36,
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          '我的包裹',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      width: 36,
                      height: 36,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffffffff),
                      ),
                      child: IconButton(
                        icon:
                            const Icon(Icons.filter_list, color: Colors.black),
                        onPressed: () {},
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      width: 36,
                      height: 36,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffffffff),
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.more_vert, color: Colors.black),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(48.0),
            child: Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.zero,
              child: const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //tabbar의 오른쪽 부분이 붙지 않는 문제가 있음
                    TabBar(
                      isScrollable: true,
                      labelColor: Colors.black,
                      labelStyle: TextStyle(fontSize: 20),
                      unselectedLabelStyle: TextStyle(fontSize: 18),
                      unselectedLabelColor: Colors.grey,
                      indicatorColor: Colors.transparent,
                      tabs: [
                        Tab(text: '全部'),
                        Tab(text: '待付款'),
                        Tab(text: '待发货'),
                        Tab(text: '待收货'),
                        Tab(text: '退款/售后'),
                        Tab(text: '待评价'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: ListView(
          children: [
            PurchaseHistoryBox(
              storeName: '奥特莱斯海外运动代购店',
              productName: '动感三叶草短袖 T 恤女夏...',
              price: '88.00',
              status: '交易关闭',
              quantity: 'x1',
              additionalInfo1: '含运费险服务 ',
              additionalInfo2: '应付款: ¥88.00',
              productDetails: '黑色(白)+红色(白);M',
              tags: const ['7天无理由退货', '全程价保'],
              imagePath: 'assets/images/image01.png',
              imagePath2: 'assets/images/icon01.png',
              ynn: false,
              buttons: [
                {
                  'text': '删除订单',
                  'onPressed': () {
                    // Handle delete
                  },
                },
                {
                  'text': '再买一单',
                  'onPressed': () {
                    // Handle reorder
                  },
                  'color': Colors.orange,
                },
              ],
              onDelete: () {
                // Handle delete action
              },
              onReorder: () {
                // Handle reorder action
              },
            ),
            PurchaseHistoryBox(
              storeName: '天天特卖工厂店',
              productName: '棉签棒家用掏耳朵棉签化妆专用...',
              price: '3.91',
              status: '交易成功',
              quantity: 'x1',
              additionalInfo1: '含运费险服务 ',
              additionalInfo2: '实付款 ¥3.91',
              productDetails: '双头棉签 500 支 (尖头 + 圆头)',
              tags: const ['7天无理由退换'],
              imagePath: 'assets/images/image02.png',
              imagePath2: 'assets/images/icon01.png',
              ynn: true,
              buttons: [
                {
                  'text': '查看物流',
                  'onPressed': () {
                    // Handle delete
                  },
                },
                {
                  'text': '评价',
                  'onPressed': () {
                    // Handle delete
                  },
                },
                {
                  'text': '加入购物车',
                  'onPressed': () {
                    // Handle reorder
                  },
                  'color': Colors.orange,
                },
              ],
              onDelete: () {
                // Handle delete action
              },
              onReorder: () {
                // Handle reorder action
              },
            ),
            PurchaseHistoryBox(
              storeName: '巴黎路旗舰店',
              productName: '巴黎路创意手环超级快充数据线...',
              price: '15.50',
              status: '交易成功',
              quantity: 'x1',
              additionalInfo1: '含15天价保等服务 ',
              additionalInfo2: '实付款 ¥15.50',
              productDetails: '22cm;2 条装 【苹果USB接口】创\n意手环快充线',
              tags: const ['假一赔十', '7天无理由退换', '15天价保'],
              imagePath: 'assets/images/image03.png',
              imagePath2: 'assets/images/icon01.png',
              ynn: true,
              buttons: [
                {
                  'text': '删除订单',
                  'onPressed': () {
                    // Handle delete
                  },
                },
                {
                  'text': '删除订单',
                  'onPressed': () {
                    // Handle delete
                  },
                },
                {
                  'text': '再买一单',
                  'onPressed': () {
                    // Handle reorder
                  },
                  'color': Colors.orange,
                },
              ],
              onDelete: () {
                // Handle delete action
              },
              onReorder: () {
                // Handle reorder action
              },
            ),
            PurchaseHistoryDoubleBox(
              storeName: '奥特莱斯直营店',
              productName: '【一折专区】抢空下架|耐光严选...',
              price: '49.90',
              status: '交易成功',
              quantity: 'x1',
              productName2: '买家绳恒集【晒图3张+10字...',
              price2: '0.00',
              quantity2: 'x1',
              additionalInfo1: '含运费险服务 ',
              additionalInfo2: '实付款¥49.90',
              productDetails: '黑色[N70623（有内衬）]; 3XL',
              productDetails2: '                                  ',
              tags: const ['7天无理由退货'],
              tags2: const [],
              imagePath: 'assets/images/image04.png',
              imagePath2: 'assets/images/image05.png',
              ynn: true,
              buttons: [
                {
                  'text': '评价',
                  'onPressed': () {
                    // Handle delete
                  },
                },
                {
                  'text': '加入购物车',
                  'onPressed': () {
                    // Handle delete
                  },
                },
                {
                  'text': '再买一单',
                  'onPressed': () {
                    // Handle reorder
                  },
                  'color': Colors.orange,
                },
              ],
              onDelete: () {
                // Handle delete action
              },
              onReorder: () {
                // Handle reorder action
              },
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DetailPage02()),
                );
              },
              child: PurchaseHistoryBox(
                storeName: '天天特卖工厂店',
                productName: '棉签棒家用掏耳朵棉签化妆专用...',
                price: '4.80',
                status: '交易关闭',
                quantity: 'x1',
                additionalInfo1: '合运费险服务 ',
                additionalInfo2: '实付款¥3.91',
                productDetails: '双头棉签 500支 (尖头+圆头)',
                tags: const ['7天无理由退换'],
                imagePath: 'assets/images/image06.png',
                imagePath2: 'assets/images/icon06.png',
                ynn: true,
                buttons: [
                  {
                    'text': '查看物流',
                    'onPressed': () {
                      // Handle delete
                    },
                  },
                  {
                    'text': '评价',
                    'onPressed': () {
                      // Handle delete
                    },
                  },
                  {
                    'text': '加入购物车',
                    'onPressed': () {
                      // Handle reorder
                    },
                    'color': Colors.orange,
                  },
                ],
                onDelete: () {
                  // Handle delete action
                },
                onReorder: () {
                  // Handle reorder action
                },
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DetailPage01()),
                );
              },
              child: PurchaseHistoryBox(
                storeName: '巴喜路旗舰店',
                productName: '巴喜路创意手环超级快充数据线...',
                price: '16.50',
                status: '交易关闭',
                quantity: 'x1',
                additionalInfo1: '合15天价保等服务 ',
                additionalInfo2: '实付款¥15.50',
                productDetails: '22cm2条装【苹果USB接口】创\n意手环快充线',
                tags: const ['假一赔四', '7天无理由退换', '15天价保'],
                imagePath: 'assets/images/image07.png',
                imagePath2: 'assets/images/icon01.png',
                ynn: true,
                buttons: [
                  {
                    'text': '更多',
                    'onPressed': () {
                      // Handle delete
                    },
                  },
                  {
                    'text': '评价',
                    'onPressed': () {
                      // Handle delete
                    },
                  },
                  {
                    'text': '加入购物车',
                    'onPressed': () {
                      // Handle reorder
                    },
                    'color': Colors.orange,
                  },
                ],
                onDelete: () {
                  // Handle delete action
                },
                onReorder: () {
                  // Handle reorder action
                },
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DetailPage()),
                );
              },
              child: PurchaseHistoryBox(
                storeName: '读创图书旗舰店',
                productName: '大树 贝纳尔·韦尔贝幻想之作...',
                price: '21.00',
                status: '买家已付款',
                quantity: 'x1',
                additionalInfo1: '含升级版运费险服务 ',
                additionalInfo2: '实付款¥21.00',
                productDetails: '',
                tags: const ['假一赔四', '7天无理由退换'],
                imagePath: 'assets/images/image08.png',
                imagePath2: 'assets/images/icon01.png',
                ynn: false,
                buttons: [
                  {
                    'text': '申请开票',
                    'onPressed': () {
                      // Handle delete
                    },
                  },
                  {
                    'text': '催发货',
                    'onPressed': () {
                      // Handle delete
                    },
                  },
                  {
                    'text': '修改地址',
                    'onPressed': () {
                      // Handle reorder
                    },
                    'color': Colors.orange,
                  },
                ],
                onDelete: () {
                  // Handle delete action
                },
                onReorder: () {
                  // Handle reorder action
                },
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DetailPage03()),
                );
              },
              child: PurchaseHistoryBox(
                storeName: '梓晨旗舰店',
                productName: '【狂欢价】硬硅藻泥浴室吸水地垫家...',
                price: '41.00',
                status: '卖家已发货',
                quantity: 'x1',
                additionalInfo1: '含全程价保等服务 ',
                additionalInfo2: '实付款¥36.00',
                productDetails: '45X35cm［买就送防滑地垫|清\n洁片】；深灰-方形',
                tags: const ['假一赔四', '7天无理由退换', '全程价保'],
                imagePath: 'assets/images/image09.png',
                imagePath2: 'assets/images/icon01.png',
                ynn: true,
                buttons: [
                  {
                    'text': '延长收货',
                    'onPressed': () {
                      // Handle delete
                    },
                  },
                  {
                    'text': '查看物流',
                    'onPressed': () {
                      // Handle delete
                    },
                  },
                  {
                    'text': '确认收货',
                    'onPressed': () {
                      // Handle reorder
                    },
                    'color': Colors.orange,
                  },
                ],
                onDelete: () {
                  // Handle delete action
                },
                onReorder: () {
                  // Handle reorder action
                },
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DetailPage04()),
                );
              },
              child: PurchaseHistoryBox(
                storeName: '佳帮手首品专卖店',
                productName: '硅藻泥吸水垫卫生间浴室地垫防...',
                price: '22.90',
                status: '等待买家付款',
                quantity: 'x1',
                additionalInfo1: '合15天价保等服务 ',
                additionalInfo2: '实付款¥15.50',
                productDetails: '経済款 35x25cm⭐️长白山天\n然硅藻泥*浅灰',
                tags: const ['破损包退', '假一赔四', '7天无理由退换'],
                imagePath: 'assets/images/image10.png',
                imagePath2: 'assets/images/icon01.png',
                ynn: true,
                buttons: [
                  {
                    'text': '更多',
                    'onPressed': () {
                      // Handle delete
                    },
                  },
                  {
                    'text': '评价',
                    'onPressed': () {
                      // Handle delete
                    },
                  },
                  {
                    'text': '加入购物车',
                    'onPressed': () {
                      // Handle reorder
                    },
                    'color': Colors.orange,
                  },
                ],
                onDelete: () {
                  // Handle delete action
                },
                onReorder: () {
                  // Handle reorder action
                },
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DetailPage05()),
                );
              },
              child: PurchaseHistoryBox(
                storeName: '潮拍旗舰店',
                productName: '适用airpodspro2贴纸 pro2...',
                price: '12.80',
                status: '交易成功',
                quantity: 'x1',
                additionalInfo1: '',
                additionalInfo2: '实付款¥12.80',
                productDetails: 'AirPods 3代【银色】金属防尘贴',
                tags: const ['假一赔四', '7天无理由退换'],
                imagePath: 'assets/images/image11.png',
                imagePath2: 'assets/images/icon01.png',
                ynn: true,
                buttons: [
                  {
                    'text': '查看物流',
                    'onPressed': () {
                      // Handle delete
                    },
                  },
                  {
                    'text': '加入购物车',
                    'onPressed': () {
                      // Handle delete
                    },
                  },
                  {
                    'text': '再买一单',
                    'onPressed': () {
                      // Handle reorder
                    },
                    'color': Colors.orange,
                  },
                ],
                onDelete: () {
                  // Handle delete action
                },
                onReorder: () {
                  // Handle reorder action
                },
              ),
            ),
            PurchaseHistoryBox(
              storeName: '友杰图书专营店',
              productName: '赠PDF答案发展汉语初级中级...',
              price: '47.00',
              status: '交易成功',
              quantity: 'x1',
              additionalInfo1: '',
              additionalInfo2: '实付款¥46.06',
              productDetails: '中级综合（II）',
              tags: const ['假一赔四', '7天无理由退换'],
              imagePath: 'assets/images/image12.png',
              imagePath2: 'assets/images/icon01.png',
              ynn: true,
              buttons: [
                {
                  'text': '查看物流',
                  'onPressed': () {
                    // Handle delete
                  },
                },
                {
                  'text': '加入购物车',
                  'onPressed': () {
                    // Handle delete
                  },
                },
                {
                  'text': '再买一单',
                  'onPressed': () {
                    // Handle reorder
                  },
                  'color': Colors.orange,
                },
              ],
              onDelete: () {
                // Handle delete action
              },
              onReorder: () {
                // Handle reorder action
              },
            ),
            PurchaseHistoryBox(
              storeName: '河马滔滔旗舰店',
              productName: '库洛米 hello kitty凯蒂猫+...',
              price: '158.00',
              status: '交易关闭',
              quantity: 'x1',
              additionalInfo1: '',
              additionalInfo2: '应付款¥158.00',
              productDetails: '原创花园凯蒂猫成品发【充电款】',
              tags: const ['假一赔四', '7天无理由退换'],
              imagePath: 'assets/images/image13.png',
              imagePath2: 'assets/images/icon01.png',
              ynn: false,
              buttons: [
                {
                  'text': '删除订单',
                  'onPressed': () {
                    // Handle delete
                  },
                },
                {
                  'text': '加入购物车',
                  'onPressed': () {
                    // Handle delete
                  },
                },
                {
                  'text': '再买一单',
                  'onPressed': () {
                    // Handle reorder
                  },
                  'color': Colors.orange,
                },
              ],
              onDelete: () {
                // Handle delete action
              },
              onReorder: () {
                // Handle reorder action
              },
            ),
          ],
        ),
      ),
    );
  }
}
