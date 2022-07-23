double getCardWidth({required double screenWidth}) {
  double cardWidth = 0;
  if (screenWidth >= 1600) {
    cardWidth = 700;
  } else if (screenWidth >= 1400 && screenWidth <= 1600) {
    cardWidth = 500;
  } else if (screenWidth >= 700 && screenWidth <= 1400) {
    cardWidth = 400;
  } else if (screenWidth <= 700) {
    cardWidth = screenWidth;
  }
  return cardWidth;
}
