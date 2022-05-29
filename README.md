# Flutter Soundboard

A simple soundboard app based on the work of [alyssaburlton](https://github.com/alyssaburlton/pocket-scat) with all the original features plus:

- Multiple tabs with different Buttons showing
- A Splashscreen
- A Info button in the AppBar
- Todo: A DarkMode switch 

## Data entry:

If you want to fork this project to make your own custom list of quotes, then you'll need:

 - Some audio clips that you want to play
 - Images for the clips. 
     - At least one per 'source' of audio, but can add more if you want more granularity than that 
     - Must be square, at least 200x200 pixels in size and in PNG format.

## Audio normalisation:

The app is a lot more user-friendly if you normalise the various audio clips, so they play at a similar volume. To do this, you can use the [normalize-audio](http://manpages.ubuntu.com/manpages/bionic/man1/normalize-audio.1.html) package:

```bash
apt-get update
apt-get install normalize-audio
FILES=$(ls assets | grep .wav)
normalize-audio $FILES
```

## Run integration tests:

Run an emulator, then:

```bash
flutter drive --driver=test_driver/integration_test.dart --target=integration_test/app_test.dart
```