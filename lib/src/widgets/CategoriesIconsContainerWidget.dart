import '../models/category.dart';
import '../models/route_argument.dart';
import '../widgets/CategoryIconWidget.dart';
import 'package:flutter/material.dart';

class CategoriesIconsContainerWidget extends StatefulWidget {

  CategoriesIconsContainerWidget({
    Key? key, 
    required CategoriesList categoriesList,
    required this.onPressed,
    }) :super(key: key);

  final ValueChanged<String> onPressed;



  @override
  _CategoriesIconsContainertState createState() => _CategoriesIconsContainertState();
}

class _CategoriesIconsContainertState extends State<CategoriesIconsContainerWidget> {
  CategoriesList categoriesList = new CategoriesList();
  @override
  Widget build(BuildContext context) {
    return  Container(
        child: Wrap(
          alignment: WrapAlignment.spaceBetween,
          children:_buildSuggestions(categoriesList.list,context)
        ),
    );
  }
}
  _buildSuggestions(List<Category> list,BuildContext context) {
    List<Widget> categories = [];
      list.forEach((item) {
      categories.add(
        Container(
          padding: EdgeInsets.only(bottom: 20),
          child: CategoryIconWidget(
            category: item,
            onPressed: (id) {
              Navigator.of(context).pushNamed('/Categorie', arguments: new RouteArgument(id: item.id, argumentsList: [item]));
            },
          ),
        ),
      );
    }
    );return categories;
  }