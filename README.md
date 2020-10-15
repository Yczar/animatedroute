
# animatedroute

[Flutter Package](https://github.com/Yczar/animatedroute)

### Show some :heart: and star the repo to support the project

## Screenshots

<img src="ss1.png" height="300em" /> <img src="ss2.png" height="300em" />

## Usage

[Example](https://github.com/Yczar/animatedroute/blob/main/example/example_app.dart)

To use this package :

* add the dependency to your [pubspec.yaml](https://github.com/Yczar/animatedroute/blob/main/pubspec.yaml) file.

```yaml
  dependencies:
    flutter:
      sdk: flutter
    animatedroute:
```

### How to use

```dart
class ExampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Container(
        child: Center(
          child: RaisedButton(
            onPressed: (){
              Navigator.of(context).push(AnimatedRoute(widget: NextScreen(), curves: Curves.easeInOutCubic, alignment: Alignment.bottomCenter));
            },
          ),
        ),
      ),
    );
  }
}

class NextScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.lightBlueAccent,
    );
  }
}
```
# Pull Requests

I welcome and encourage all pull requests. It usually will take me within 24-48 hours to respond to any issue or request. Here are some basic rules to follow to ensure timely addition of your request:

1.  Match coding style (braces, spacing, etc.) This is best achieved using `Reformat Code` feature of Android Studio `CMD`+`Option`+`L` on Mac and `CTRL` + `ALT` + `L` on Linux + Windows .
2.  If its a feature, bugfix, or anything please only change code to what you specify.
3.  Please keep PR titles easy to read and descriptive of changes, this will make them easier to merge :)
4.  Pull requests _must_ be made against `develop` branch. Any other branch (unless specified by the maintainers) will get rejected.
5.  Check for existing [issues](https://github.com/Yczar/animatedroute/issues) first, before filing an issue.
6.  Make sure you follow the set standard as all other projects in this repo do
7.  Have fun!

### Created & Maintained By

[Babalola Ayotomide](https://github.com/yczar)  
([Twitter](https://www.twitter.com/czarify))  
([Youtube](https://www.youtube.com/c/MTechViral))
([Insta](https://www.instagram.com/codepur_ka_superhero))

# License

    Copyright 2020 Babalola Ayotomide

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.

## Getting Started

For help getting started with Flutter, view our online
[documentation](http://flutter.io/).
