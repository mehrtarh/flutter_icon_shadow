# Icon shadow

Flutter Icon shadow


![](https://github.com/mehrtarh/flutter_icon_shadow/blob/master/sample.PNG?raw=true)


#### how to use:

##### 1. add dependencies to pubspec.yaml:

```yaml
 icon_shadow: ^1.0.1
```

##### 2. add icons:


```dart
Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconShadowWidget(Icon(Icons.lightbulb_outline,
                    color: Colors.lightBlueAccent, size: 36)),
                IconShadowWidget(Icon(Icons.lightbulb_outline,
                    color: Colors.lightBlueAccent, size: 36),shadowColor: Colors.lightBlueAccent.shade100,),
                IconShadowWidget(Icon(Icons.lightbulb_outline,
                    color: Colors.lightBlueAccent, size: 36),showShadow: false,)
              ],
            )
```