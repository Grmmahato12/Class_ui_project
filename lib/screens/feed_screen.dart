import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:sliver_tools/sliver_tools.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';
import 'package:ui_project_1/widgets/search_textfield.dart';
import 'package:ui_project_1/widgets/product_card.dart';
import 'package:ui_project_1/widgets/section_wrapper.dart';
import 'package:ui_project_1/widgets/store_card.dart';
import 'package:ui_project_1/widgets/tag_card.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({super.key});

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> with SingleTickerProviderStateMixin{

late TabController tabController;

  List<String> items =[
    "assets/images/images.jpeg",
    "assets/images/Mask Group.png",
  ];

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled){
              return[
                SliverPinnedHeader(
                  child: Column(
                            children: [
                              const SizedBox(height: 20,),
                              Row(
                  children: [
                    IconButton(onPressed: (){}, icon: const Icon(Icons.menu, color: Color(0xff3E3E40))),
                    const Expanded(child: SearchTextfield ()),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Text('w', 
                      style: TextStyle(color: Color(0xff272728), fontSize: 18, fontWeight: FontWeight.w800),),
                    )
                  ],
                              ),
                            ],
                          ),
                ),
                 SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: TabBar(
                      controller: tabController,
                      labelStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff272728),
                      ),
                      unselectedLabelStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff272728),
                      ),
                      labelColor: const Color(0xff272728),
                      unselectedLabelColor: const Color(0xff272728),
                      isScrollable: true,
                      dividerColor: Colors.transparent,
                      indicatorPadding: const EdgeInsets.only(top: 15),
                      indicatorWeight: 2,
                      indicator: DotIndicator(
                        color: const Color(0xff614FE0),
                        radius: 4
                      ),
                      tabs: const [
                      
                        Tab(
                          text: 'Features',
                          
                        ),
                        Tab(
                          text: 'Collection',
                        ),
                        Tab(
                          text: 'Stores',
                        ),
                        Tab(
                          text: 'Tags',
                        ),
                      ],
                      ),
                  ),
                ),
              ];
            }, 

            body:SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 16,),
                  Swiper(
                        itemBuilder: (BuildContext context,int index){
                          return Stack(
                            children: [
                              ClipRRect(
                              borderRadius:BorderRadius.circular(16),
                              child: Image.asset( items[index],
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: 180,
                              )),
            
                              Positioned.fill(
                                left: 20,
                                bottom: 10,
                                top: 10,
                                
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(5),
                                      decoration: const BoxDecoration(
                                        color: Color(0xff614FE0),
                                        borderRadius: BorderRadius.all(
                                          Radius.elliptical(40, 20),
                                        )
                                      ),
                                      child: const Icon(Icons.leaderboard, color: Colors.white,),
                                    ),
                                    const Spacer(),
                                    const Text('For the love of nature',
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    ),
                                    const Text("Explore what's new on",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                    ),),
                                    const Text("# Sustainable",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Color(0x99614FE0),
                                      fontWeight: FontWeight.bold,
                                      shadows: [
                                        Shadow(
                                          color: Colors.white,
                                          blurRadius: 0.5,
                                          offset: Offset(0, 0),
                                        ),
                                      ],
                                    ),)
                                  ],
                                )
                                ),
            
                            ],
                            
                          );
                        },
                        itemCount: items.length,
                        itemWidth: MediaQuery.of(context).size.width -24,
                        layout: SwiperLayout.TINDER,
                        itemHeight: 180,
                        //pagination: const SwiperPagination(),
                        //control: const SwiperControl(),
                      ),
                      const SizedBox(height: 24,),
                       SectionWrapper( 
                        title: "New stores",
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(3, (index){
                              return Container(
                                padding: EdgeInsets.only(left: index == 0 ? 16 :0,),
                                child: const StoreCard(
                                image: "assets/images/images.jpeg", 
                                brandImage: "assets/images/images.jpeg",
                                brand: "Levi’s", 
                                name: "Denim, Casual sgfhsgf sdhfgshjdg sjdhfghsjd"),
                              );
                            }),
                          ),
                        ),
                        ),
            
                        SectionWrapper( 
                        title: "Products on sale",
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(3, (index){
                              return Container(
                                padding: EdgeInsets.only(left: index == 0 ? 16 :0,),
                                child: const ProductCard(
                                image: "assets/images/images.jpeg", 
                                 discountPrice: "\$29",
                                 color: Color(0xff6E6E70),
                               originalPrice: "\$49",
                                name: "Bershka Platform Sandals with Buckle"),
                              );
                            }),
                          ),
                        ),
                        ),
                        SectionWrapper( 
                        title: "Fresh collections",
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(3, (index){
                              return Container(
                                padding: EdgeInsets.only(left: index == 0 ? 16 :0,),
                                child: const StoreCard(
                                image: "assets/images/images.jpeg", 
                                brandImage: "assets/images/images.jpeg",
                                brand: "Lacoste x Polaroid", 
                                name: "Lacoste",
                                height: 160,
                                widget: 160,
                                ),
                              );
                            }),
                          ),
                        ),
                        ),
                        SectionWrapper( 
                        title: "Discover tags",
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(3, (index){
                              return Container(
                                padding: EdgeInsets.only(left: index == 0 ? 16 :0,),
                                child: const TagCard(
                                  image: "assets/images/leaf.png", 
                                  title: "Sustainable",
                                  ),
                              );
                            }),
                          ),
                        ),
                        ),

                        SectionWrapper( 
                        title: "Lacoste",
                        image: "assets/images/images.jpeg", 
                        subTitle: "Store of the week",

                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(3, (index){
                              return Container(
                                padding: EdgeInsets.only(left: index == 0 ? 16 :0,),
                                child: const ProductCard(
                                image: "assets/images/images.jpeg", 
                                // discountPrice: "\$29",
                               originalPrice: "\$49",
                                name: "Bershka Platform Sandals with Buckle"),
                              );
                            }),
                          ),
                        ),
                        ),
                    
                ],
              ),
            ),
  
            
            
            
            ),
          
        );
  }
}
//color: Color(0xff6E6E70)