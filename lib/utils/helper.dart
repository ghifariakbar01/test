class TestHelper {
  // format number 200.00 to 0.2 kg
  static String formatWeight(double weight) {
    return weight.toStringAsFixed(2) + " kg";
  }
}
