import 'package:flutter/cupertino.dart';

class ShoesModel {
  String imageAsset;
  String shoesName;
  String shoesPrice;
  String deskripsi;

  ShoesModel({
    @required this.imageAsset,
    @required this.shoesName,
    @required this.shoesPrice,
    @required this.deskripsi,
  });
}

var shoesdmodelList = [
  ShoesModel(
      imageAsset: 'images/sneaker1.jpg',
      shoesName: 'Nike Air Force 1 \'07 LV8',
      shoesPrice: 'Rp 1.499.000',
      deskripsi:
          'The radiance lives on in the Nike Air Force 1 \'07, the b-ball icon that puts an expressive spin on what you know best: crisp leather, bold colours and the perfect amount of flash to make you shine. Celebrating art and DIY style, the paint splatter upper invites you to add your own artistic touch. Or wear the canvas as-is and turn heads with its 1-of-a-kind design.'),
  ShoesModel(
      imageAsset: 'images/sneaker2.jpg',
      shoesName: 'Nike Air Force 1 GTX',
      shoesPrice: 'Rp 2,389,000',
      deskripsi:
          'The radiance lives on in the Nike Air Force 1 GTX, the b-ball OG that puts a fresh spin on what you know best: crisp leather, bold colours and the perfect amount of flash to make you shine. This time it\'s clad in GORE-TEX technology and an ink that turns from white to blue when it\'s hit by the rain.'),
  ShoesModel(
      imageAsset: 'images/sneaker3.jpg',
      shoesName: 'Nike Air More Uptempo 96',
      shoesPrice: 'Rp 2,389,000',
      deskripsi:
          'The Nike Air More Uptempo 96 brings OG basketball back to the streets. It features \'90s graffiti-styled graphics alongside visible full-length Air cushioning. \Elastic straps over the tongue keep your style sharp whether you rock them laced or unlaced. The throwback, chunky design \is combined with of-era over-branding for a look that will never fade.'),
  ShoesModel(
      imageAsset: 'images/sneaker4.jpg',
      shoesName: 'Nike Flyleather Blazer',
      shoesPrice: 'Rp 1,429,000',
      deskripsi:
          'Celebrate the link between planet and sport in the Nike Flyleather Blazer Low \'77.Left/right independent graphics created by Tokyo-based artist, Mayumi Yamase, are evocative of the natural world.It\'s got a Flyleather upper that\'s made with at least 50% recycled leather fibre, combined with synthetic materials.Colours inspired from her local green space, Yoyogi Park, add calming elements.With classic simplicity and incredible comfort, it\'s a must-have wardrobe staple.'),
  ShoesModel(
      imageAsset: 'images/sneaker5.jpg',
      shoesName: 'Nike Air Max 90',
      shoesPrice: 'Rp 1,258,000',
      deskripsi:
          'Nothing as fly, nothing as comfortable, nothing as proven—the Nike Air Max 90 stays true to its roots with the iconic Waffle outsole, stitched overlays and classic TPU accents. Fresh colours give a modern look while Max Air cushioning adds comfort to your journey. Colour Shown: Summit White/Barely Green/Bright Mango/Dark Smoke Grey'),
  ShoesModel(
      imageAsset: 'images/sneaker6.jpg',
      shoesName: 'Nike Air Max 96 II',
      shoesPrice: 'Rp 2,389,000',
      deskripsi:
          'For the first time, the Air Max 96 II returns with a 1–1 remake. Bringing back the sporty aesthetic imagined by famed Nike designer Sergio Lorenzo, with retro colours on a classic \'90s construction, it\'s a return to throwback athletics styling. Nike Air cushioning keeps it comfortable. Long live the bubble.'),
  ShoesModel(
      imageAsset: 'images/sneaker7.jpg',
      shoesName: 'Nike ZoomX Vaporfly',
      shoesPrice: 'Rp 3,209,000',
      deskripsi:
          'Continue the next evolution of speed with a racing shoe made to help you chase new goals and records.The Nike ZoomX Vaporfly Next% 2 \'OG\' builds on the model racers everywhere love.It helps improve comfort and breathability with a redesigned upper.From a 10K to a marathon, the 2 still has the responsive cushioning and secure support to push you towards your personal best.'),
  ShoesModel(
      imageAsset: 'images/sneaker8.jpg',
      shoesName: 'KD Trey 5 VIII EP',
      shoesPrice: 'Rp 768,000',
      deskripsi:
          'Kevin Durant goes all-out every play and needs his shoes to keep up. The KD Trey 5 VIII EP has a supportive, responsive midsole paired with multi-directional traction for use on indoor and outdoor courts. The layered, mid-high upper keeps you feeling light and secure around the ankle.')
];
