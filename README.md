# Icon shadow

Flutter Icon shadow

![](https://github.com/mehrtarh/flutter_icon_shadow/blob/master/sample.PNG?raw=true)

## **Breaking changes from 2.0.0**

Now the icon parameter is a named argument `child` , you can also use a new parameter `offset` to set the shadow offset, also the shadow is now by default black and not the color of the icon.

```dart
IconShadowWidget(
    child: Icon(
        Icons.lightbulb_outline,
        color: Colors.lightBlueAccent,
        size: 36,
    ),
    offset: Offset(0, 3),
)
```

## How to use:

### 1. Add dependencies to `pubspec.yaml`

```yaml
 icon_shadow: any
```

### 2. Add icons

```dart
Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
        IconShadowWidget(
            child: Icon(
                Icons.lightbulb_outline,
                color: Colors.lightBlueAccent,
                size: 36,
            ),
        ),
        IconShadowWidget(
            child: Icon(
                Icons.lightbulb_outline,
                color: Colors.lightBlueAccent,
                size: 36,
            ),
            shadowColor: Colors.lightBlueAccent.shade100,
        ),
        IconShadowWidget(
            child: Icon(
                Icons.lightbulb_outline,
                color: Colors.lightBlueAccent,
                size: 36,
            ),
            showShadow: false,
        ),
    ],
)
```
