# Animation circle bottom bar

Flutter circle bottom bar by animation


![](https://github.com/mehrtarh/animation_circle_bottom_bar/blob/master/sample_screen.png?raw=true)


#### how to use:

##### 1. add dependencies to pubspec.yaml:

```yaml
circle_bottombar: ^1.1.1
```

##### 2. create tabs:
```dart
    List<TabItem> tabItems = List.of([
          new TabItem(Icons.person_outline, Colors.red.shade100),
          new TabItem(Icons.lightbulb_outline, Colors.red.shade200),
          new TabItem(Icons.home, Colors.red.shade300),
          new TabItem(Icons.phone_locked, Colors.red.shade400),
          new TabItem(Icons.person_outline, Colors.red.shade500),
        ]);
```

##### 3. create bottombar:

```dart
bottomNavigationBar: CircularBottomNavigation(
        tabItems,
        selectedCallback: (int selectedPos) {
          setState(() {
            _text = "text " + selectedPos.toString();
          });
          print("clicked on $selectedPos");
        },
        controller: _navigationController,
        barBackgroundColor: Colors.black,
        normalIconColor: Colors.red.shade900,
        iconsSize: 24,
        selectedIconColor: Colors.white,
        animationDuration: Duration(milliseconds: 500),
        circleStrokeWidth: 5,
        circleStrokeColor: Color(0xFF680200),
        barShadowSize: 2.0,
        barLineColor: Colors.red.shade900,
        barLineSize: 2.0,
        barShowLine: true,
      )
```