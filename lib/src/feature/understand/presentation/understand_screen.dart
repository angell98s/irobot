import 'package:flutter/material.dart';
import 'package:irobot/src/common_widgets/responsive_center.dart';
import 'package:irobot/src/constants/app_sizes.dart';
import 'package:irobot/src/localization/app_localizations_context.dart';

class UnderstandScreen extends StatelessWidget {
  const UnderstandScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var width =
        // MediaQuery.of(context).size.height - kToolbarHeight >=
        //         MediaQuery.of(context).size.height - kToolbarHeight
        //     ? MediaQuery.of(context).size.height - kToolbarHeight - 150
        //     : MediaQuery.of(context).size.width >= Breakpoint.tablet
        //         ? Breakpoint.tablet
        //         :
        MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 123, 201, 146),
      appBar: AppBar(title: Text(context.loc.unders_assimi.toUpperCase())),
      body: ResponsiveCenter(
        padding: const EdgeInsets.all(Sizes.p16),
        child: CustomPaint(
          size: Size(width, (width * 0.869197584124245).toDouble()),
          painter: RPSCustomPainter(),
        ),
      ),
    );
  }
}

//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.6795513, size.height * 0.4489776);
    path_0.cubicTo(
        size.width * 0.6631579,
        size.height * 0.4053008,
        size.width * 0.6441760,
        size.height * 0.2623585,
        size.width * 0.7080242,
        size.height * 0.2524320);
    path_0.cubicTo(
        size.width * 0.7779120,
        size.height * 0.2425055,
        size.width * 0.7787748,
        size.height * 0.3814771,
        size.width * 0.7805004,
        size.height * 0.4311098);
    path_0.cubicTo(
        size.width * 0.7822261,
        size.height * 0.4827278,
        size.width * 0.7805004,
        size.height * 0.5353385,
        size.width * 0.7787748,
        size.height * 0.5869565);
    path_0.cubicTo(
        size.width * 0.7761864,
        size.height * 0.6554497,
        size.width * 0.7658326,
        size.height * 0.7289061,
        size.width * 0.7735979,
        size.height * 0.7954139);
    path_0.cubicTo(
        size.width * 0.7632442,
        size.height * 0.6683542,
        size.width * 0.7019845,
        size.height * 0.5075442,
        size.width * 0.6795513,
        size.height * 0.4489776);
    path_0.close();

    Paint paint0Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.01225194;
    paint0Stroke.color = const Color(0xff000000).withOpacity(1.0);
    paint0Stroke.strokeCap = StrokeCap.round;
    paint0Stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_0, paint0Stroke);

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xff5c4037).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.2766178, size.height * 0.4817352);
    path_1.cubicTo(
        size.width * 0.2930112,
        size.height * 0.4380584,
        size.width * 0.3119931,
        size.height * 0.2941235,
        size.width * 0.2481450,
        size.height * 0.2851896);
    path_1.cubicTo(
        size.width * 0.1782571,
        size.height * 0.2752631,
        size.width * 0.1773943,
        size.height * 0.4142347,
        size.width * 0.1756687,
        size.height * 0.4638674);
    path_1.cubicTo(
        size.width * 0.1739431,
        size.height * 0.5154854,
        size.width * 0.1756687,
        size.height * 0.5680961,
        size.width * 0.1773943,
        size.height * 0.6197141);
    path_1.cubicTo(
        size.width * 0.1799827,
        size.height * 0.6882073,
        size.width * 0.1532355,
        size.height * 0.6127655,
        size.width * 0.1454702,
        size.height * 0.6792734);
    path_1.cubicTo(
        size.width * 0.2157032,
        size.height * 0.6762954,
        size.width * 0.2541846,
        size.height * 0.5403018,
        size.width * 0.2766178,
        size.height * 0.4817352);
    path_1.close();

    Paint paint1Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.01225194;
    paint1Stroke.color = const Color(0xff000000).withOpacity(1.0);
    paint1Stroke.strokeCap = StrokeCap.round;
    paint1Stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_1, paint1Stroke);

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = const Color(0xff5c4037).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.3223469, size.height * 0.7368473);
    path_2.cubicTo(
        size.width * 0.2705781,
        size.height * 0.6663689,
        size.width * 0.2584987,
        size.height * 0.5750447,
        size.width * 0.2464193,
        size.height * 0.4847131);
    path_2.cubicTo(
        size.width * 0.2317515,
        size.height * 0.3735358,
        size.width * 0.2127696,
        size.height * 0.2464761,
        size.width * 0.2593615,
        size.height * 0.1482033);
    path_2.cubicTo(
        size.width * 0.2861087,
        size.height * 0.09261465,
        size.width * 0.3577222,
        size.height * 0.02312885,
        size.width * 0.4414150,
        size.height * 0.01022434);
    path_2.cubicTo(
        size.width * 0.5544435,
        size.height * -0.007643439,
        size.width * 0.6855910,
        size.height * 0.05191582,
        size.width * 0.7149267,
        size.height * 0.1343061);
    path_2.cubicTo(
        size.width * 0.7710095,
        size.height * 0.2911455,
        size.width * 0.7261432,
        size.height * 0.4549335,
        size.width * 0.6976704,
        size.height * 0.5929124);
    path_2.cubicTo(
        size.width * 0.6657463,
        size.height * 0.7467739,
        size.width * 0.4974978,
        size.height * 0.9641652,
        size.width * 0.3672131,
        size.height * 0.8222156);
    path_2.cubicTo(
        size.width * 0.3611734,
        size.height * 0.8162597,
        size.width * 0.3278689,
        size.height * 0.7437959,
        size.width * 0.3223469,
        size.height * 0.7368473);
    path_2.close();

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = const Color(0xffe0862f).withOpacity(1.0);
    canvas.drawPath(path_2, paint2Fill);

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.3223469, size.height * 0.7368473);
    path_3.cubicTo(
        size.width * 0.2912856,
        size.height * 0.6941632,
        size.width * 0.2869715,
        size.height * 0.6137582,
        size.width * 0.3085418,
        size.height * 0.5641255);
    path_3.cubicTo(
        size.width * 0.3257981,
        size.height * 0.5244193,
        size.width * 0.3672131,
        size.height * 0.4906690,
        size.width * 0.3922347,
        size.height * 0.4539408);
    path_3.cubicTo(
        size.width * 0.4086281,
        size.height * 0.4301171,
        size.width * 0.4457291,
        size.height * 0.3636093,
        size.width * 0.4509060,
        size.height * 0.3338297);
    path_3.cubicTo(
        size.width * 0.4603969,
        size.height * 0.2812190,
        size.width * 0.4500431,
        size.height * 0.1740123,
        size.width * 0.4534944,
        size.height * 0.1253722);
    path_3.cubicTo(
        size.width * 0.4560828,
        size.height * 0.08566607,
        size.width * 0.4465919,
        size.height * 0.03603335,
        size.width * 0.4854185,
        size.height * 0.04298193);
    path_3.cubicTo(
        size.width * 0.5242450,
        size.height * 0.04993051,
        size.width * 0.5087144,
        size.height * 0.08963669,
        size.width * 0.5026747,
        size.height * 0.1352988);
    path_3.cubicTo(
        size.width * 0.4949094,
        size.height * 0.1948581,
        size.width * 0.4845557,
        size.height * 0.2653365,
        size.width * 0.4914582,
        size.height * 0.3338297);
    path_3.cubicTo(
        size.width * 0.4940466,
        size.height * 0.3636093,
        size.width * 0.5044003,
        size.height * 0.3854477,
        size.width * 0.5199310,
        size.height * 0.4132420);
    path_3.cubicTo(
        size.width * 0.5371872,
        size.height * 0.4430216,
        size.width * 0.5578947,
        size.height * 0.4668453,
        size.width * 0.5829163,
        size.height * 0.5125074);
    path_3.cubicTo(
        size.width * 0.6036238,
        size.height * 0.5502283,
        size.width * 0.6286454,
        size.height * 0.5819932,
        size.width * 0.6338223,
        size.height * 0.6266627);
    path_3.cubicTo(
        size.width * 0.6381363,
        size.height * 0.6643836,
        size.width * 0.6415876,
        size.height * 0.7289061,
        size.width * 0.6243313,
        size.height * 0.7616637);
    path_3.cubicTo(
        size.width * 0.6105263,
        size.height * 0.7884654,
        size.width * 0.5768766,
        size.height * 0.8152670,
        size.width * 0.5544435,
        size.height * 0.8331348);
    path_3.cubicTo(
        size.width * 0.4957722,
        size.height * 0.8778042,
        size.width * 0.4215703,
        size.height * 0.8817749,
        size.width * 0.3689387,
        size.height * 0.8232083);
    path_3.cubicTo(
        size.width * 0.3611734,
        size.height * 0.8162597,
        size.width * 0.3278689,
        size.height * 0.7437959,
        size.width * 0.3223469,
        size.height * 0.7368473);
    path_3.close();

    Paint paint3Fill = Paint()..style = PaintingStyle.fill;
    paint3Fill.color = const Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_3, paint3Fill);

    Path path_4 = Path();
    path_4.moveTo(size.width * 0.3723900, size.height * 0.7606710);
    path_4.cubicTo(
        size.width * 0.3844694,
        size.height * 0.7298987,
        size.width * 0.4250216,
        size.height * 0.7160016,
        size.width * 0.4534944,
        size.height * 0.7090530);
    path_4.cubicTo(
        size.width * 0.4862813,
        size.height * 0.7021044,
        size.width * 0.5380500,
        size.height * 0.6901926,
        size.width * 0.5596204,
        size.height * 0.7298987);
    path_4.cubicTo(
        size.width * 0.6018982,
        size.height * 0.8063331,
        size.width * 0.5432269,
        size.height * 0.8490173,
        size.width * 0.4862813,
        size.height * 0.8599365);
    path_4.cubicTo(
        size.width * 0.4353753,
        size.height * 0.8688704,
        size.width * 0.3732528,
        size.height * 0.8539805,
        size.width * 0.3698016,
        size.height * 0.7835021);
    path_4.arcToPoint(Offset(size.width * 0.3723900, size.height * 0.7606710),
        radius: Radius.elliptical(
            size.width * 0.03839517, size.height * 0.04417312),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_4.close();

    Paint paint4Fill = Paint()..style = PaintingStyle.fill;
    paint4Fill.color = const Color(0xffc99cb3).withOpacity(1.0);
    canvas.drawPath(path_4, paint4Fill);

    Path path_5 = Path();
    path_5.moveTo(size.width * 0.3223469, size.height * 0.7368473);
    path_5.cubicTo(
        size.width * 0.2705781,
        size.height * 0.6663689,
        size.width * 0.2584987,
        size.height * 0.5750447,
        size.width * 0.2464193,
        size.height * 0.4847131);
    path_5.cubicTo(
        size.width * 0.2317515,
        size.height * 0.3735358,
        size.width * 0.2127696,
        size.height * 0.2464761,
        size.width * 0.2593615,
        size.height * 0.1482033);
    path_5.cubicTo(
        size.width * 0.2861087,
        size.height * 0.09261465,
        size.width * 0.3577222,
        size.height * 0.02312885,
        size.width * 0.4414150,
        size.height * 0.01022434);
    path_5.cubicTo(
        size.width * 0.5544435,
        size.height * -0.007643439,
        size.width * 0.6855910,
        size.height * 0.05191582,
        size.width * 0.7149267,
        size.height * 0.1343061);
    path_5.cubicTo(
        size.width * 0.7710095,
        size.height * 0.2911455,
        size.width * 0.7261432,
        size.height * 0.4549335,
        size.width * 0.6976704,
        size.height * 0.5929124);
    path_5.cubicTo(
        size.width * 0.6657463,
        size.height * 0.7467739,
        size.width * 0.4974978,
        size.height * 0.9641652,
        size.width * 0.3672131,
        size.height * 0.8222156);
    path_5.cubicTo(
        size.width * 0.3611734,
        size.height * 0.8162597,
        size.width * 0.3278689,
        size.height * 0.7437959,
        size.width * 0.3223469,
        size.height * 0.7368473);
    path_5.close();

    Paint paint5Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.01225194;
    paint5Stroke.color = const Color(0xff000000).withOpacity(1.0);
    paint5Stroke.strokeCap = StrokeCap.round;
    paint5Stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_5, paint5Stroke);

    Paint paint5Fill = Paint()..style = PaintingStyle.fill;
    paint5Fill.color = const Color(0xff865d50).withOpacity(1.0);
    // canvas.drawPath(path_5, paint5Fill);

    Path path_6 = Path();
    path_6.moveTo(size.width * 0.3749784, size.height * 0.8202303);
    path_6.cubicTo(
        size.width * 0.4405522,
        size.height * 0.8182450,
        size.width * 0.4940466,
        size.height * 0.8202303,
        size.width * 0.5406385,
        size.height * 0.8112964);
    path_6.cubicTo(
        size.width * 0.5829163,
        size.height * 0.8033552,
        size.width * 0.5924072,
        size.height * 0.8222156,
        size.width * 0.5837791,
        size.height * 0.8420687);
    path_6.cubicTo(
        size.width * 0.5673857,
        size.height * 0.8817749,
        size.width * 0.3905091,
        size.height * 0.9204884,
        size.width * 0.3447800,
        size.height * 0.8291642);
    path_6.cubicTo(
        size.width * 0.3292494,
        size.height * 0.7418106,
        size.width * 0.3232097,
        size.height * 0.8212230,
        size.width * 0.3749784,
        size.height * 0.8202303);
    path_6.close();

    Paint paint6Fill = Paint()..style = PaintingStyle.fill;
    paint6Fill.color = const Color(0xffE5E5E5).withOpacity(1.0);
    canvas.drawPath(path_6, paint6Fill);

    Paint paint6Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.01225194;
    paint6Stroke.color = const Color(0xff000000).withOpacity(1.0);
    paint6Stroke.strokeCap = StrokeCap.round;
    paint6Stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_6, paint6Stroke);

    Path path_7 = Path();
    path_7.moveTo(size.width * 0.4534944, size.height * 0.6452253);
    path_7.cubicTo(
        size.width * 0.4509060,
        size.height * 0.6829462,
        size.width * 0.4595341,
        size.height * 0.7176891,
        size.width * 0.4595341,
        size.height * 0.7564026);
    path_7.cubicTo(
        size.width * 0.5225194,
        size.height * 0.7891602,
        size.width * 0.5311475,
        size.height * 0.8804844,
        size.width * 0.5734254,
        size.height * 0.8943816);
    path_7.cubicTo(
        size.width * 0.6131148,
        size.height * 0.9072861,
        size.width * 0.6605695,
        size.height * 0.8784991,
        size.width * 0.6648835,
        size.height * 0.8288664);
    path_7.cubicTo(
        size.width * 0.6709232,
        size.height * 0.7633512,
        size.width * 0.6597066,
        size.height * 0.6670637,
        size.width * 0.6303710,
        size.height * 0.5866587);

    Paint paint7Fill = Paint()..style = PaintingStyle.fill;
    paint7Fill.color = const Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_7, paint7Fill);

    Paint paint7Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.01225194;
    paint7Stroke.color = const Color(0xff000000).withOpacity(1.0);
    paint7Stroke.strokeCap = StrokeCap.round;
    paint7Stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_7, paint7Stroke);

    Path path_8 = Path();
    path_8.moveTo(size.width * 0.2990509, size.height * 0.5740520);
    path_8.cubicTo(
        size.width * 0.2705781,
        size.height * 0.6792734,
        size.width * 0.2636756,
        size.height * 0.8877308,
        size.width * 0.3499569,
        size.height * 0.8946794);
    path_8.cubicTo(
        size.width * 0.4241588,
        size.height * 0.9016280,
        size.width * 0.4129422,
        size.height * 0.7765535,
        size.width * 0.4578085,
        size.height * 0.7636490);
    path_8.cubicTo(
        size.width * 0.4638481,
        size.height * 0.7050824,
        size.width * 0.4517688,
        size.height * 0.6544570,
        size.width * 0.4517688,
        size.height * 0.6197141);

    Paint paint8Fill = Paint()..style = PaintingStyle.fill;
    paint8Fill.color = const Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_8, paint8Fill);

    Paint paint8Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.01225194;
    paint8Stroke.color = const Color(0xff000000).withOpacity(1.0);
    paint8Stroke.strokeCap = StrokeCap.round;
    paint8Stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_8, paint8Stroke);

    Path path_9 = Path();
    path_9.moveTo(size.width * 0.4698878, size.height * 0.6584276);
    path_9.cubicTo(
        size.width * 0.4008628,
        size.height * 0.6782807,
        size.width * 0.3784297,
        size.height * 0.5800079,
        size.width * 0.4371009,
        size.height * 0.5551916);
    path_9.cubicTo(
        size.width * 0.5090595,
        size.height * 0.5244193,
        size.width * 0.5682485,
        size.height * 0.6306333,
        size.width * 0.4698878,
        size.height * 0.6584276);
    path_9.close();

    Paint paint9Fill = Paint()..style = PaintingStyle.fill;
    paint9Fill.color = const Color(0xff3a3a3a).withOpacity(1.0);
    canvas.drawPath(path_9, paint9Fill);

    Paint paint9Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.01225194;
    paint9Stroke.color = const Color(0xff000000).withOpacity(1.0);
    paint9Stroke.strokeCap = StrokeCap.round;
    paint9Stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_9, paint9Stroke);

    Path path_10 = Path();
    path_10.moveTo(size.width * 0.3749784, size.height * 0.3665873);
    path_10.cubicTo(
        size.width * 0.4112166,
        size.height * 0.3735358,
        size.width * 0.3896462,
        size.height * 0.4311098,
        size.width * 0.3672131,
        size.height * 0.4241612);
    path_10.cubicTo(
        size.width * 0.3499569,
        size.height * 0.4191979,
        size.width * 0.3352890,
        size.height * 0.3596387,
        size.width * 0.3749784,
        size.height * 0.3665873);
    path_10.close();

    Paint paint10Fill = Paint()..style = PaintingStyle.fill;
    paint10Fill.color = const Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_10, paint10Fill);

    Path path_11 = Path();
    path_11.moveTo(size.width * 0.5906816, size.height * 0.3566607);
    path_11.cubicTo(
        size.width * 0.6269198,
        size.height * 0.3586460,
        size.width * 0.6234685,
        size.height * 0.4281318,
        size.width * 0.5837791,
        size.height * 0.4102640);
    path_11.cubicTo(
        size.width * 0.5673857,
        size.height * 0.4023228,
        size.width * 0.5694564,
        size.height * 0.3556681,
        size.width * 0.5906816,
        size.height * 0.3566607);
    path_11.close();

    Paint paint11Fill = Paint()..style = PaintingStyle.fill;
    paint11Fill.color = const Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_11, paint11Fill);

    Path path_12 = Path();
    path_12.moveTo(size.width * 0.2329594, size.height * 0.6177288);
    path_12.cubicTo(
        size.width * 0.2433132,
        size.height * 0.7636490,
        size.width * 0.2683348,
        size.height * 0.9363709,
        size.width * 0.1553063,
        size.height * 0.9840183);
    path_12.cubicTo(
        size.width * 0.1078516,
        size.height * 1.003871,
        size.width * 0.04314064,
        size.height * 0.9919595,
        size.width * 0.01553063,
        size.height * 0.9363709);
    path_12.cubicTo(
        size.width * -0.01553063,
        size.height * 0.8738336,
        size.width * 0.03278689,
        size.height * 0.8212230,
        size.width * 0.06729940,
        size.height * 0.7815168);
    path_12.cubicTo(
        size.width * 0.1173425,
        size.height * 0.7239428,
        size.width * 0.1371872,
        size.height * 0.6028390,
        size.width * 0.1604832,
        size.height * 0.4539408);
    path_12.cubicTo(
        size.width * 0.1708369,
        size.height * 0.3864403,
        size.width * 0.1406385,
        size.height * 0.3159619,
        size.width * 0.1725626,
        size.height * 0.2494540);
    path_12.cubicTo(
        size.width * 0.1837791,
        size.height * 0.2256303,
        size.width * 0.2182916,
        size.height * 0.1938654,
        size.width * 0.2450388,
        size.height * 0.2027993);
    path_12.cubicTo(
        size.width * 0.2303710,
        size.height * 0.2514393,
        size.width * 0.2355479,
        size.height * 0.2633512,
        size.width * 0.2528041,
        size.height * 0.2851896);
    path_12.cubicTo(
        size.width * 0.2381363,
        size.height * 0.3189398,
        size.width * 0.2260569,
        size.height * 0.3447489,
        size.width * 0.2217429,
        size.height * 0.3824697);
    path_12.cubicTo(
        size.width * 0.2136324,
        size.height * 0.4608894,
        size.width * 0.2274374,
        size.height * 0.5393091,
        size.width * 0.2329594,
        size.height * 0.6177288);
    path_12.close();

    Paint paint12Fill = Paint()..style = PaintingStyle.fill;
    paint12Fill.color = const Color(0xff865d50).withOpacity(1.0);
    canvas.drawPath(path_12, paint12Fill);

    Path path_13 = Path();
    path_13.moveTo(size.width * 0.2329594, size.height * 0.6177288);
    path_13.cubicTo(
        size.width * 0.2355479,
        size.height * 0.6524717,
        size.width * 0.2433132,
        size.height * 0.7279134,
        size.width * 0.2381363,
        size.height * 0.7636490);
    path_13.cubicTo(
        size.width * 0.2303710,
        size.height * 0.7249355,
        size.width * 0.1941329,
        size.height * 0.6862220,
        size.width * 0.1889560,
        size.height * 0.6236847);
    path_13.cubicTo(
        size.width * 0.1837791,
        size.height * 0.5581695,
        size.width * 0.1639344,
        size.height * 0.4966250,
        size.width * 0.1630716,
        size.height * 0.4311098);
    path_13.cubicTo(
        size.width * 0.1622088,
        size.height * 0.3715505,
        size.width * 0.1466782,
        size.height * 0.3050427,
        size.width * 0.1734254,
        size.height * 0.2494540);
    path_13.cubicTo(
        size.width * 0.1846419,
        size.height * 0.2256303,
        size.width * 0.2191544,
        size.height * 0.1938654,
        size.width * 0.2459016,
        size.height * 0.2027993);
    path_13.cubicTo(
        size.width * 0.2467645,
        size.height * 0.2633512,
        size.width * 0.2519413,
        size.height * 0.2573953,
        size.width * 0.2536670,
        size.height * 0.2851896);
    path_13.cubicTo(
        size.width * 0.2389991,
        size.height * 0.3189398,
        size.width * 0.2269198,
        size.height * 0.3447489,
        size.width * 0.2226057,
        size.height * 0.3824697);
    path_13.cubicTo(
        size.width * 0.2136324,
        size.height * 0.4608894,
        size.width * 0.2274374,
        size.height * 0.5393091,
        size.width * 0.2329594,
        size.height * 0.6177288);
    path_13.close();

    Paint paint13Fill = Paint()..style = PaintingStyle.fill;
    paint13Fill.color = const Color(0xffa2644b).withOpacity(1.0);
    canvas.drawPath(path_13, paint13Fill);

    Path path_14 = Path();
    path_14.moveTo(size.width * 0.2541846, size.height * 0.2851896);
    path_14.cubicTo(
        size.width * 0.1989646,
        size.height * 0.3556681,
        size.width * 0.2265746,
        size.height * 0.5234266,
        size.width * 0.2334771,
        size.height * 0.6177288);
    path_14.cubicTo(
        size.width * 0.2438309,
        size.height * 0.7636490,
        size.width * 0.2688525,
        size.height * 0.9363709,
        size.width * 0.1558240,
        size.height * 0.9840183);
    path_14.cubicTo(
        size.width * 0.1083693,
        size.height * 1.003871,
        size.width * 0.04365833,
        size.height * 0.9919595,
        size.width * 0.01604832,
        size.height * 0.9363709);
    path_14.cubicTo(
        size.width * -0.01501294,
        size.height * 0.8738336,
        size.width * 0.03330457,
        size.height * 0.8212230,
        size.width * 0.06781708,
        size.height * 0.7815168);
    path_14.cubicTo(
        size.width * 0.1178602,
        size.height * 0.7239428,
        size.width * 0.1377049,
        size.height * 0.6028390,
        size.width * 0.1610009,
        size.height * 0.4539408);
    path_14.cubicTo(
        size.width * 0.1566868,
        size.height * 0.3794918,
        size.width * 0.1359793,
        size.height * 0.1968434,
        size.width * 0.2429681,
        size.height * 0.2067699);

    Paint paint14Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.01225194;
    paint14Stroke.color = const Color(0xff000000).withOpacity(1.0);
    paint14Stroke.strokeCap = StrokeCap.round;
    paint14Stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_14, paint14Stroke);

    Path path_15 = Path();
    path_15.moveTo(size.width * 0.1575496, size.height * 0.4360731);
    path_15.cubicTo(
        size.width * 0.1653149,
        size.height * 0.5194560,
        size.width * 0.1756687,
        size.height * 0.6207068,
        size.width * 0.2041415,
        size.height * 0.7070677);

    Paint paint15Fill = Paint()..style = PaintingStyle.fill;
    paint15Fill.color = const Color(0xff3a3a3a).withOpacity(1.0);
    canvas.drawPath(path_15, paint15Fill);

    Paint paint15Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.01225194;
    paint15Stroke.color = const Color(0xff000000).withOpacity(1.0);
    paint15Stroke.strokeCap = StrokeCap.round;
    paint15Stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_15, paint15Stroke);

    Path path_16 = Path();
    path_16.moveTo(size.width * 0.8003451, size.height * 0.4864006);
    path_16.cubicTo(
        size.width * 0.7882657,
        size.height * 0.4208854,
        size.width * 0.7994823,
        size.height * 0.3504070,
        size.width * 0.7908542,
        size.height * 0.2829065);
    path_16.cubicTo(
        size.width * 0.7865401,
        size.height * 0.2521342,
        size.width * 0.7805004,
        size.height * 0.2134207,
        size.width * 0.7597929,
        size.height * 0.1905896);
    path_16.cubicTo(
        size.width * 0.7390854,
        size.height * 0.1677586,
        size.width * 0.7226920,
        size.height * 0.1747072,
        size.width * 0.7123382,
        size.height * 0.2144133);
    path_16.cubicTo(
        size.width * 0.7037101,
        size.height * 0.2471709,
        size.width * 0.7062985,
        size.height * 0.2531269,
        size.width * 0.7192407,
        size.height * 0.2769506);
    path_16.cubicTo(
        size.width * 0.7339085,
        size.height * 0.3047449,
        size.width * 0.7399482,
        size.height * 0.3384951,
        size.width * 0.7451251,
        size.height * 0.3692674);
    path_16.cubicTo(
        size.width * 0.7554789,
        size.height * 0.4367679,
        size.width * 0.7537532,
        size.height * 0.5042684,
        size.width * 0.7589301,
        size.height * 0.5717689);
    path_16.cubicTo(
        size.width * 0.7675582,
        size.height * 0.6839389,
        size.width * 0.7270060,
        size.height * 0.8953742,
        size.width * 0.8391717,
        size.height * 0.9430216);
    path_16.cubicTo(
        size.width * 0.8866264,
        size.height * 0.9628747,
        size.width * 0.9565142,
        size.height * 0.9241612,
        size.width * 0.9841242,
        size.height * 0.8685726);
    path_16.cubicTo(
        size.width * 1.015186,
        size.height * 0.8060353,
        size.width * 0.9711821,
        size.height * 0.7474687,
        size.width * 0.9358067,
        size.height * 0.7077626);
    path_16.cubicTo(
        size.width * 0.8857636,
        size.height * 0.6524717,
        size.width * 0.8141501,
        size.height * 0.5658130,
        size.width * 0.8003451,
        size.height * 0.4864006);
    path_16.close();

    Paint paint16Fill = Paint()..style = PaintingStyle.fill;
    paint16Fill.color = const Color(0xff865d50).withOpacity(1.0);
    canvas.drawPath(path_16, paint16Fill);

    Path path_17 = Path();
    path_17.moveTo(size.width * 0.7951682, size.height * 0.4864006);
    path_17.cubicTo(
        size.width * 0.7977567,
        size.height * 0.4198928,
        size.width * 0.7994823,
        size.height * 0.3494143,
        size.width * 0.7908542,
        size.height * 0.2838991);
    path_17.cubicTo(
        size.width * 0.7865401,
        size.height * 0.2531269,
        size.width * 0.7805004,
        size.height * 0.2144133,
        size.width * 0.7597929,
        size.height * 0.1915823);
    path_17.cubicTo(
        size.width * 0.7390854,
        size.height * 0.1687512,
        size.width * 0.7321829,
        size.height * 0.1707365,
        size.width * 0.7123382,
        size.height * 0.1796704);
    path_17.cubicTo(
        size.width * 0.7183779,
        size.height * 0.2005162,
        size.width * 0.7140638,
        size.height * 0.2144133,
        size.width * 0.7037101,
        size.height * 0.2501489);
    path_17.arcToPoint(Offset(size.width * 0.7451251, size.height * 0.3702601),
        radius:
            Radius.elliptical(size.width * 0.4319241, size.height * 0.4969228),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_17.cubicTo(
        size.width * 0.7554789,
        size.height * 0.4377606,
        size.width * 0.7537532,
        size.height * 0.5052611,
        size.width * 0.7589301,
        size.height * 0.5727616);
    path_17.cubicTo(
        size.width * 0.7632442,
        size.height * 0.6323208,
        size.width * 0.7597929,
        size.height * 0.6928727,
        size.width * 0.7589301,
        size.height * 0.7524320);
    path_17.cubicTo(
        size.width * 0.7813632,
        size.height * 0.7008140,
        size.width * 0.8055220,
        size.height * 0.6432400,
        size.width * 0.8003451,
        size.height * 0.5836808);
    path_17.arcToPoint(Offset(size.width * 0.7951682, size.height * 0.5092317),
        radius:
            Radius.elliptical(size.width * 0.5176877, size.height * 0.5955926),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_17.close();

    Paint paint17Fill = Paint()..style = PaintingStyle.fill;
    paint17Fill.color = const Color(0xffa2644b).withOpacity(1.0);
    canvas.drawPath(path_17, paint17Fill);

    Path path_18 = Path();
    path_18.moveTo(size.width * 0.7019845, size.height * 0.2524320);
    path_18.cubicTo(
        size.width * 0.7572045,
        size.height * 0.3229105,
        size.width * 0.7503020,
        size.height * 0.4797499,
        size.width * 0.7580673,
        size.height * 0.5730594);
    path_18.cubicTo(
        size.width * 0.7666954,
        size.height * 0.6852293,
        size.width * 0.7261432,
        size.height * 0.8966647,
        size.width * 0.8383089,
        size.height * 0.9443121);
    path_18.cubicTo(
        size.width * 0.8857636,
        size.height * 0.9641652,
        size.width * 0.9556514,
        size.height * 0.9254517,
        size.width * 0.9832614,
        size.height * 0.8698630);
    path_18.cubicTo(
        size.width * 1.014323,
        size.height * 0.8073258,
        size.width * 0.9703192,
        size.height * 0.7487592,
        size.width * 0.9349439,
        size.height * 0.7090530);
    path_18.cubicTo(
        size.width * 0.8849008,
        size.height * 0.6514791,
        size.width * 0.8141501,
        size.height * 0.5651181,
        size.width * 0.7994823,
        size.height * 0.4866984);
    path_18.cubicTo(
        size.width * 0.7865401,
        size.height * 0.4152273,
        size.width * 0.8201898,
        size.height * 0.1640858,
        size.width * 0.7132010,
        size.height * 0.1740123);

    Paint paint18Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.01225194;
    paint18Stroke.color = const Color(0xff000000).withOpacity(1.0);
    paint18Stroke.strokeCap = StrokeCap.round;
    paint18Stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_18, paint18Stroke);

    // Paint paint18Fill = Paint()..style = PaintingStyle.fill;
    // paint18Fill.color = const Color(0xff865d50).withOpacity(1.0);
    // canvas.drawPath(path_18, paint18Fill);

    Path path_19 = Path();
    path_19.moveTo(size.width * 0.7968939, size.height * 0.4450069);
    path_19.cubicTo(
        size.width * 0.7968939,
        size.height * 0.5244193,
        size.width * 0.8089733,
        size.height * 0.6157435,
        size.width * 0.7865401,
        size.height * 0.6921779);

    Paint paint19Fill = Paint()..style = PaintingStyle.fill;
    paint19Fill.color = const Color(0xff865d50).withOpacity(1.0);
    canvas.drawPath(path_19, paint19Fill);

    Paint paint19Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.01225194;
    paint19Stroke.color = const Color(0xff000000).withOpacity(1.0);
    paint19Stroke.strokeCap = StrokeCap.round;
    paint19Stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_19, paint19Stroke);

    Path path_20 = Path();
    path_20.moveTo(size.width * 0.5572908, size.height * 0.7297002);
    path_20.cubicTo(
        size.width * 0.5820535,
        size.height * 0.7308914,
        size.width * 0.5797239,
        size.height * 0.7725829,
        size.width * 0.5525453,
        size.height * 0.7618622);
    path_20.cubicTo(
        size.width * 0.5413287,
        size.height * 0.7570975,
        size.width * 0.5425367,
        size.height * 0.7291046,
        size.width * 0.5572908,
        size.height * 0.7297002);
    path_20.close();

    Paint paint20Fill = Paint()..style = PaintingStyle.fill;
    paint20Fill.color = const Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_20, paint20Fill);

    Path path_21 = Path();
    path_21.moveTo(size.width * 0.5842105, size.height * 0.6902918);
    path_21.cubicTo(
        size.width * 0.6089733,
        size.height * 0.6914830,
        size.width * 0.6066437,
        size.height * 0.7331745,
        size.width * 0.5795513,
        size.height * 0.7224538);
    path_21.cubicTo(
        size.width * 0.5683348,
        size.height * 0.7176891,
        size.width * 0.5694564,
        size.height * 0.6896962,
        size.width * 0.5842105,
        size.height * 0.6902918);
    path_21.close();

    Paint paint21Fill = Paint()..style = PaintingStyle.fill;
    paint21Fill.color = const Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_21, paint21Fill);

    Path path_22 = Path();
    path_22.moveTo(size.width * 0.5989646, size.height * 0.7357554);
    path_22.cubicTo(
        size.width * 0.6237274,
        size.height * 0.7369466,
        size.width * 0.6213978,
        size.height * 0.7786381,
        size.width * 0.5942192,
        size.height * 0.7679174);
    path_22.cubicTo(
        size.width * 0.5830026,
        size.height * 0.7631527,
        size.width * 0.5842105,
        size.height * 0.7351598,
        size.width * 0.5989646,
        size.height * 0.7357554);
    path_22.close();

    Paint paint22Fill = Paint()..style = PaintingStyle.fill;
    paint22Fill.color = const Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_22, paint22Fill);

    Path path_23 = Path();
    path_23.moveTo(size.width * 0.3355479, size.height * 0.7239428);
    path_23.cubicTo(
        size.width * 0.3603106,
        size.height * 0.7251340,
        size.width * 0.3579810,
        size.height * 0.7668255,
        size.width * 0.3308024,
        size.height * 0.7561048);
    path_23.cubicTo(
        size.width * 0.3196721,
        size.height * 0.7513401,
        size.width * 0.3207938,
        size.height * 0.7233472,
        size.width * 0.3355479,
        size.height * 0.7239428);
    path_23.close();

    Paint paint23Fill = Paint()..style = PaintingStyle.fill;
    paint23Fill.color = const Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_23, paint23Fill);

    Path path_24 = Path();
    path_24.moveTo(size.width * 0.3623814, size.height * 0.6849315);
    path_24.cubicTo(
        size.width * 0.3871441,
        size.height * 0.6861227,
        size.width * 0.3847282,
        size.height * 0.7277149,
        size.width * 0.3576359,
        size.height * 0.7169942);
    path_24.cubicTo(
        size.width * 0.3465919,
        size.height * 0.7118324,
        size.width * 0.3477998,
        size.height * 0.6839389,
        size.width * 0.3623814,
        size.height * 0.6849315);
    path_24.close();

    Paint paint24Fill = Paint()..style = PaintingStyle.fill;
    paint24Fill.color = const Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_24, paint24Fill);

    Path path_25 = Path();
    path_25.moveTo(size.width * 0.3772217, size.height * 0.7299980);
    path_25.cubicTo(
        size.width * 0.4019845,
        size.height * 0.7311892,
        size.width * 0.3996549,
        size.height * 0.7728807,
        size.width * 0.3724763,
        size.height * 0.7621600);
    path_25.cubicTo(
        size.width * 0.3612597,
        size.height * 0.7573953,
        size.width * 0.3623814,
        size.height * 0.7294024,
        size.width * 0.3772217,
        size.height * 0.7299980);
    path_25.close();

    Paint paint25Fill = Paint()..style = PaintingStyle.fill;
    paint25Fill.color = const Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_25, paint25Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
