/// document will be added
class VoiceDuration {
  /// document will be added
  static String getDuration(int duration) =>
      _minuteSecondFormatted(Duration(seconds: duration));

  static String _minuteSecondFormatted(Duration duration) {
    duration.toString();
    return [duration.inMinutes.remainder(60), duration.inSeconds.remainder(60)]
        .map((seg) {
      return seg.toString().padLeft(2, '0');
    }).join(':');
  }
}
