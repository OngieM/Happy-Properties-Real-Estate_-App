import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:happyproperties/screens/calculator.dart';
import 'package:happyproperties/screens/dummy.dart';
import 'package:happyproperties/models/category_model.dart';
import 'package:happyproperties/models/property_model.dart';
import 'package:happyproperties/screens/category_page.dart';
import 'package:happyproperties/screens/details_page.dart';
import 'package:happyproperties/screens/login_page.dart';
import 'package:happyproperties/screens/profile_page.dart';




class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState> ();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
        color: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color:Colors.white,
              ),
              child: Center(
                child: Text('Menu',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),),
              )

            ),
            ListTile(
              title: const Text('Profile'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ProfileScreen()));
              },
            ),
            ListTile(
              title: const Text('Portfolio'),
              onTap: () {Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage2()));
              },
            ),
            ListTile(
              title: const Text('Favorites'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Calculators'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const FinancialCalculatorPage()));
              },
            ),
            ListTile(
              title: const Text('Alerts'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Map'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Financial Report'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Marketplace'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Contact Us'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Sign Out'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
            ),
          ],
        )
        ),
      ),
      key: _globalKey,

      body: Builder(builder: (context) {
        // your conditions to render the widgets!

          return SingleChildScrollView(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(icon: const Icon (Icons.menu), color: Colors.black,
                        onPressed: () {
                          _globalKey.currentState?.openDrawer() ;
                        }),

                    Row(
                      children: [
                        const SizedBox(
                          width: 12,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Welcome Mr. Smith",
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ],
                        ),
                        const Spacer(),
                        const Icon(LineIcons.bellAlt)
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 4,
                        horizontal: 8,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(LineIcons.search),
                          hintText: "Search...",
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                      const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1 / 0.4,
                      ),
                      itemCount: categories.length,
                      itemBuilder: (BuildContext context, int index) {
                        return CategoryButton(categoryModel: categories[index]);
                      },
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Column(

                      children: [
                        ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: properties.length,
                          itemBuilder: (BuildContext context, int index) {
                            return ExpandedRecommendationCard(
                              propertyModel: properties[index],
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        }
    )
    );
  }
  }

class RecommendationCard extends StatelessWidget {
  const RecommendationCard({
    Key? key,
    required this.propertyModel,
  }) : super(key: key);

  final PropertyModel propertyModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetailsPage(propertyModel: propertyModel),
        ),
      ),
      child: Container(
        width: 200,
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.only(right: 8),
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.15),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image(
                height: 120,
                width: double.infinity,
                image: AssetImage(propertyModel.thumbnail),
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              propertyModel.title,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              "${propertyModel.rooms} rooms - ${propertyModel.area} square foots - ${propertyModel.floors} floors",
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(style:
                Theme.of(context).textTheme.subtitle2!.copyWith(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold,),
                "R ${propertyModel.price}"
            )
          ],
        ),
      ),
    );
  }
}

class CategoryButton extends StatelessWidget {
  final CategoryModel categoryModel;
  const CategoryButton({
    Key? key,
    required this.categoryModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CategoryPage(
              categoryModel: categoryModel,
            ),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.all(4),
        padding: const EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.15),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              categoryModel.title,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
            Flexible(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image(
                  height: 50,
                  width: 50,
                  image: AssetImage('${categoryModel.assetPath}'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}