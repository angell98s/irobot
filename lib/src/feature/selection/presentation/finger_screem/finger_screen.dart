import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:irobot/src/common_widgets/responsive_center.dart';
import 'package:irobot/src/constants/app_sizes.dart';
import 'package:irobot/src/constants/breakpoints.dart';
import 'package:irobot/src/localization/app_localizations_context.dart';
import 'package:irobot/src/routing/app_router.dart';

class FingerScreen extends StatelessWidget {
  const FingerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.loc.fingerprint.toUpperCase()),
        leading: GestureDetector(
          onTap: () => context.goNamed(AppRoute.home.name),
          child: const Icon(Icons.arrow_back_rounded),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 123, 201, 146),
      body: const CustomScrollView(
        slivers: [
          ResponsiveSliverCenter(
            padding: EdgeInsets.all(Sizes.p16),
            child: Finger(),
          ),
        ],
      ),
    );
  }
}

class Finger extends StatefulWidget {
  const Finger({super.key});

  @override
  State<Finger> createState() => _FingerState();
}

class _FingerState extends State<Finger> with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 10),
      vsync: this,
    )
      ..repeat()
      ..drive(CurveTween(curve: Curves.easeInQuart))
      ..drive(
        AlignmentTween(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      );
  }

  Animatable<Color?> color = TweenSequence<Color?>([
    TweenSequenceItem(
      weight: 1.0,
      tween: ColorTween(
        begin: Colors.red,
        end: Colors.green,
      ),
    ),
    TweenSequenceItem(
      weight: 1.0,
      tween: ColorTween(
        begin: Colors.green,
        end: Colors.blue,
      ),
    ),
    TweenSequenceItem(
      weight: 1.0,
      tween: ColorTween(
        begin: Colors.blue,
        end: Colors.pink,
      ),
    ),
  ]);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width >=
            MediaQuery.of(context).size.height - kToolbarHeight
        ? MediaQuery.of(context).size.height - kToolbarHeight - 150
        : MediaQuery.of(context).size.width >= Breakpoint.tablet
            ? Breakpoint.tablet
            : MediaQuery.of(context).size.width;

    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        var newColor =
            color.evaluate(AlwaysStoppedAnimation(_controller.value))!;
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomPaint(
              size: Size(
                width,
                (width * 1).toDouble(),
              ), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
              painter: RPSCustomPainter(
                color: newColor,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              '${context.loc.scanning}...'.toUpperCase(),
              style: TextStyle(fontSize: 32, color: newColor),
            )
          ],
        );
      },
    );
  }
}

//Add this CustomPaint widget to the Widget Tree

//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {
  RPSCustomPainter({required this.color});
  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.5604233, size.height * 0.6055378);
    path_0.lineTo(size.width * 0.5604233, size.height * 0.5345572);
    path_0.cubicTo(
        size.width * 0.5604233,
        size.height * 0.5065702,
        size.width * 0.5376544,
        size.height * 0.4838013,
        size.width * 0.5096674,
        size.height * 0.4838013);
    path_0.cubicTo(
        size.width * 0.4816803,
        size.height * 0.4838013,
        size.width * 0.4589114,
        size.height * 0.5065702,
        size.width * 0.4589114,
        size.height * 0.5345572);
    path_0.lineTo(size.width * 0.4589114, size.height * 0.5986436);
    path_0.cubicTo(
        size.width * 0.4589114,
        size.height * 0.6758726,
        size.width * 0.4304600,
        size.height * 0.7500194,
        size.width * 0.3787948,
        size.height * 0.8074233);
    path_0.lineTo(size.width * 0.3075616, size.height * 0.8865724);
    path_0.cubicTo(
        size.width * 0.3015767,
        size.height * 0.8932225,
        size.width * 0.3021166,
        size.height * 0.9034644,
        size.width * 0.3087667,
        size.height * 0.9094514);
    path_0.cubicTo(
        size.width * 0.3154147,
        size.height * 0.9154363,
        size.width * 0.3256566,
        size.height * 0.9148963,
        size.width * 0.3316436,
        size.height * 0.9082462);
    path_0.lineTo(size.width * 0.4028769, size.height * 0.8290972);
    path_0.cubicTo(
        size.width * 0.4599028,
        size.height * 0.7657322,
        size.width * 0.4913089,
        size.height * 0.6838898,
        size.width * 0.4913089,
        size.height * 0.5986436);
    path_0.lineTo(size.width * 0.4913089, size.height * 0.5345572);
    path_0.cubicTo(
        size.width * 0.4913089,
        size.height * 0.5244341,
        size.width * 0.4995443,
        size.height * 0.5161987,
        size.width * 0.5096674,
        size.height * 0.5161987);
    path_0.cubicTo(
        size.width * 0.5197905,
        size.height * 0.5161987,
        size.width * 0.5280259,
        size.height * 0.5244341,
        size.width * 0.5280259,
        size.height * 0.5345572);
    path_0.lineTo(size.width * 0.5280259, size.height * 0.6055378);
    path_0.cubicTo(
        size.width * 0.5280259,
        size.height * 0.7005767,
        size.width * 0.4928186,
        size.height * 0.7916436,
        size.width * 0.4288877,
        size.height * 0.8619676);
    path_0.lineTo(size.width * 0.3594514, size.height * 0.9383477);
    path_0.cubicTo(
        size.width * 0.3534341,
        size.height * 0.9449654,
        size.width * 0.3539222,
        size.height * 0.9552138,
        size.width * 0.3605421,
        size.height * 0.9612311);
    path_0.cubicTo(
        size.width * 0.3636458,
        size.height * 0.9640540,
        size.width * 0.3675443,
        size.height * 0.9654428,
        size.width * 0.3714320,
        size.height * 0.9654428);
    path_0.cubicTo(
        size.width * 0.3758380,
        size.height * 0.9654428,
        size.width * 0.3802268,
        size.height * 0.9636566,
        size.width * 0.3834233,
        size.height * 0.9601404);
    path_0.lineTo(size.width * 0.4528575, size.height * 0.8837603);
    path_0.cubicTo(
        size.width * 0.5222225,
        size.height * 0.8074600,
        size.width * 0.5604233,
        size.height * 0.7086523,
        size.width * 0.5604233,
        size.height * 0.6055378);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = color.withOpacity(1.0);
    paint0Fill.color = color.withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.6295378, size.height * 0.5345572);
    path_1.cubicTo(
        size.width * 0.6295378,
        size.height * 0.4684600,
        size.width * 0.5757646,
        size.height * 0.4146868,
        size.width * 0.5096674,
        size.height * 0.4146868);
    path_1.cubicTo(
        size.width * 0.4435702,
        size.height * 0.4146868,
        size.width * 0.3897970,
        size.height * 0.4684600,
        size.width * 0.3897970,
        size.height * 0.5345572);
    path_1.lineTo(size.width * 0.3897970, size.height * 0.5986436);
    path_1.cubicTo(
        size.width * 0.3897970,
        size.height * 0.6587711,
        size.width * 0.3676458,
        size.height * 0.7164968,
        size.width * 0.3274233,
        size.height * 0.7611879);
    path_1.lineTo(size.width * 0.2767819, size.height * 0.8174579);
    path_1.cubicTo(
        size.width * 0.2707970,
        size.height * 0.8241080,
        size.width * 0.2713369,
        size.height * 0.8343499,
        size.width * 0.2779870,
        size.height * 0.8403369);
    path_1.cubicTo(
        size.width * 0.2846371,
        size.height * 0.8463218,
        size.width * 0.2948769,
        size.height * 0.8457775,
        size.width * 0.3008639,
        size.height * 0.8391317);
    path_1.lineTo(size.width * 0.3515054, size.height * 0.7828618);
    path_1.cubicTo(
        size.width * 0.3970907,
        size.height * 0.7322117,
        size.width * 0.4221965,
        size.height * 0.6667883,
        size.width * 0.4221965,
        size.height * 0.5986436);
    path_1.lineTo(size.width * 0.4221965, size.height * 0.5345572);
    path_1.cubicTo(
        size.width * 0.4221965,
        size.height * 0.4863240,
        size.width * 0.4614363,
        size.height * 0.4470842,
        size.width * 0.5096695,
        size.height * 0.4470842);
    path_1.cubicTo(
        size.width * 0.5579028,
        size.height * 0.4470842,
        size.width * 0.5971425,
        size.height * 0.4863240,
        size.width * 0.5971425,
        size.height * 0.5345572);
    path_1.lineTo(size.width * 0.5971425, size.height * 0.6055378);
    path_1.cubicTo(
        size.width * 0.5971425,
        size.height * 0.7178035,
        size.width * 0.5555529,
        size.height * 0.8253844,
        size.width * 0.4800302,
        size.height * 0.9084579);
    path_1.lineTo(size.width * 0.4214449, size.height * 0.9729050);
    path_1.cubicTo(
        size.width * 0.4154255,
        size.height * 0.9795227,
        size.width * 0.4159136,
        size.height * 0.9897711,
        size.width * 0.4225335,
        size.height * 0.9957883);
    path_1.cubicTo(
        size.width * 0.4256371,
        size.height * 0.9986112,
        size.width * 0.4295356,
        size.height,
        size.width * 0.4334233,
        size.height);
    path_1.cubicTo(
        size.width * 0.4378294,
        size.height,
        size.width * 0.4422181,
        size.height * 0.9982138,
        size.width * 0.4454147,
        size.height * 0.9946976);
    path_1.lineTo(size.width * 0.5040022, size.height * 0.9302505);
    path_1.cubicTo(
        size.width * 0.5849546,
        size.height * 0.8412009,
        size.width * 0.6295378,
        size.height * 0.7258834,
        size.width * 0.6295378,
        size.height * 0.6055378);
    path_1.lineTo(size.width * 0.6295378, size.height * 0.5345572);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = color.withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.6986523, size.height * 0.5345572);
    path_2.cubicTo(
        size.width * 0.6986523,
        size.height * 0.4303499,
        size.width * 0.6138747,
        size.height * 0.3455724,
        size.width * 0.5096674,
        size.height * 0.3455724);
    path_2.cubicTo(
        size.width * 0.4054600,
        size.height * 0.3455724,
        size.width * 0.3206825,
        size.height * 0.4303499,
        size.width * 0.3206825,
        size.height * 0.5345572);
    path_2.lineTo(size.width * 0.3206825, size.height * 0.5986436);
    path_2.cubicTo(
        size.width * 0.3206825,
        size.height * 0.6416674,
        size.width * 0.3048315,
        size.height * 0.6829741,
        size.width * 0.2760497,
        size.height * 0.7149525);
    path_2.lineTo(size.width * 0.2304514, size.height * 0.7656177);
    path_2.cubicTo(
        size.width * 0.2244665,
        size.height * 0.7722678,
        size.width * 0.2250065,
        size.height * 0.7825097,
        size.width * 0.2316566,
        size.height * 0.7884968);
    path_2.cubicTo(
        size.width * 0.2383045,
        size.height * 0.7944816,
        size.width * 0.2485486,
        size.height * 0.7939374,
        size.width * 0.2545335,
        size.height * 0.7872916);
    path_2.lineTo(size.width * 0.3001317, size.height * 0.7366263);
    path_2.cubicTo(
        size.width * 0.3342765,
        size.height * 0.6986890,
        size.width * 0.3530799,
        size.height * 0.6496847,
        size.width * 0.3530799,
        size.height * 0.5986436);
    path_2.lineTo(size.width * 0.3530799, size.height * 0.5345572);
    path_2.cubicTo(
        size.width * 0.3530799,
        size.height * 0.4482138,
        size.width * 0.4233240,
        size.height * 0.3779698,
        size.width * 0.5096674,
        size.height * 0.3779698);
    path_2.cubicTo(
        size.width * 0.5960108,
        size.height * 0.3779698,
        size.width * 0.6662549,
        size.height * 0.4482138,
        size.width * 0.6662549,
        size.height * 0.5345572);
    path_2.lineTo(size.width * 0.6662549, size.height * 0.6055378);
    path_2.cubicTo(
        size.width * 0.6662549,
        size.height * 0.7350367,
        size.width * 0.6182808,
        size.height * 0.8591274,
        size.width * 0.5311685,
        size.height * 0.9549482);
    path_2.lineTo(size.width * 0.5149546, size.height * 0.9727840);
    path_2.cubicTo(
        size.width * 0.5089374,
        size.height * 0.9794039,
        size.width * 0.5094255,
        size.height * 0.9896501,
        size.width * 0.5160454,
        size.height * 0.9956674);
    path_2.cubicTo(
        size.width * 0.5191490,
        size.height * 0.9984881,
        size.width * 0.5230497,
        size.height * 0.9998790,
        size.width * 0.5269352,
        size.height * 0.9998790);
    path_2.cubicTo(
        size.width * 0.5313413,
        size.height * 0.9998790,
        size.width * 0.5357300,
        size.height * 0.9980929,
        size.width * 0.5389266,
        size.height * 0.9945767);
    path_2.lineTo(size.width * 0.5551382, size.height * 0.9767408);
    path_2.cubicTo(
        size.width * 0.6476825,
        size.height * 0.8749417,
        size.width * 0.6986501,
        size.height * 0.7431145,
        size.width * 0.6986501,
        size.height * 0.6055378);
    path_2.lineTo(size.width * 0.6986501, size.height * 0.5345572);
    path_2.close();

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = color.withOpacity(1.0);
    canvas.drawPath(path_2, paint2Fill);

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.2515680, size.height * 0.5345572);
    path_3.cubicTo(
        size.width * 0.2515680,
        size.height * 0.5435054,
        size.width * 0.2588207,
        size.height * 0.5507559,
        size.width * 0.2677667,
        size.height * 0.5507559);
    path_3.cubicTo(
        size.width * 0.2767127,
        size.height * 0.5507559,
        size.width * 0.2839654,
        size.height * 0.5435054,
        size.width * 0.2839654,
        size.height * 0.5345572);
    path_3.cubicTo(
        size.width * 0.2839654,
        size.height * 0.4800108,
        size.width * 0.3037689,
        size.height * 0.4273197,
        size.width * 0.3397300,
        size.height * 0.3861879);
    path_3.cubicTo(
        size.width * 0.3753564,
        size.height * 0.3454384,
        size.width * 0.4242527,
        size.height * 0.3187905,
        size.width * 0.4774104,
        size.height * 0.3111533);
    path_3.cubicTo(
        size.width * 0.4862657,
        size.height * 0.3098812,
        size.width * 0.4924125,
        size.height * 0.3016695,
        size.width * 0.4911404,
        size.height * 0.2928164);
    path_3.cubicTo(
        size.width * 0.4898683,
        size.height * 0.2839611,
        size.width * 0.4816501,
        size.height * 0.2778229,
        size.width * 0.4728035,
        size.height * 0.2790864);
    path_3.cubicTo(
        size.width * 0.4119827,
        size.height * 0.2878251,
        size.width * 0.3560605,
        size.height * 0.3182873,
        size.width * 0.3153391,
        size.height * 0.3648661);
    path_3.cubicTo(
        size.width * 0.2742160,
        size.height * 0.4119006,
        size.width * 0.2515680,
        size.height * 0.4721663,
        size.width * 0.2515680,
        size.height * 0.5345572);
    path_3.close();

    Paint paint3Fill = Paint()..style = PaintingStyle.fill;
    paint3Fill.color = color.withOpacity(1.0);
    canvas.drawPath(path_3, paint3Fill);

    Path path_4 = Path();
    path_4.moveTo(size.width * 0.2839654, size.height * 0.5986436);
    path_4.cubicTo(
        size.width * 0.2839654,
        size.height * 0.5896955,
        size.width * 0.2767127,
        size.height * 0.5824449,
        size.width * 0.2677667,
        size.height * 0.5824449);
    path_4.cubicTo(
        size.width * 0.2588207,
        size.height * 0.5824449,
        size.width * 0.2515680,
        size.height * 0.5896955,
        size.width * 0.2515680,
        size.height * 0.5986436);
    path_4.cubicTo(
        size.width * 0.2515680,
        size.height * 0.6245659,
        size.width * 0.2420194,
        size.height * 0.6494492,
        size.width * 0.2246803,
        size.height * 0.6687149);
    path_4.lineTo(size.width * 0.1841210, size.height * 0.7137840);
    path_4.cubicTo(
        size.width * 0.1781361,
        size.height * 0.7204320,
        size.width * 0.1786760,
        size.height * 0.7306739,
        size.width * 0.1853261,
        size.height * 0.7366609);
    path_4.cubicTo(
        size.width * 0.1884233,
        size.height * 0.7394471,
        size.width * 0.1922959,
        size.height * 0.7408186,
        size.width * 0.1961577,
        size.height * 0.7408186);
    path_4.cubicTo(
        size.width * 0.2005896,
        size.height * 0.7408186,
        size.width * 0.2050065,
        size.height * 0.7390086,
        size.width * 0.2082030,
        size.height * 0.7354557);
    path_4.lineTo(size.width * 0.2487624, size.height * 0.6903888);
    path_4.cubicTo(
        size.width * 0.2714622,
        size.height * 0.6651641,
        size.width * 0.2839654,
        size.height * 0.6325832,
        size.width * 0.2839654,
        size.height * 0.5986436);
    path_4.close();

    Paint paint4Fill = Paint()..style = PaintingStyle.fill;
    paint4Fill.color = color.withOpacity(1.0);
    canvas.drawPath(path_4, paint4Fill);

    Path path_5 = Path();
    path_5.moveTo(size.width * 0.7359719, size.height * 0.7432462);
    path_5.cubicTo(
        size.width * 0.7273132,
        size.height * 0.7409914,
        size.width * 0.7184665,
        size.height * 0.7461641,
        size.width * 0.7161987,
        size.height * 0.7548164);
    path_5.cubicTo(
        size.width * 0.7102181,
        size.height * 0.7776652,
        size.width * 0.7027797,
        size.height * 0.8003801,
        size.width * 0.6940821,
        size.height * 0.8223283);
    path_5.cubicTo(
        size.width * 0.6907862,
        size.height * 0.8306458,
        size.width * 0.6948575,
        size.height * 0.8400605,
        size.width * 0.7031749,
        size.height * 0.8433542);
    path_5.cubicTo(
        size.width * 0.7051339,
        size.height * 0.8441296,
        size.width * 0.7071512,
        size.height * 0.8444968,
        size.width * 0.7091382,
        size.height * 0.8444968);
    path_5.cubicTo(
        size.width * 0.7155853,
        size.height * 0.8444968,
        size.width * 0.7216825,
        size.height * 0.8406199,
        size.width * 0.7242030,
        size.height * 0.8342613);
    path_5.cubicTo(
        size.width * 0.7333801,
        size.height * 0.8110972,
        size.width * 0.7412311,
        size.height * 0.7871296,
        size.width * 0.7475421,
        size.height * 0.7630173);
    path_5.cubicTo(
        size.width * 0.7498056,
        size.height * 0.7543650,
        size.width * 0.7446242,
        size.height * 0.7455119,
        size.width * 0.7359719,
        size.height * 0.7432462);
    path_5.close();

    Paint paint5Fill = Paint()..style = PaintingStyle.fill;
    paint5Fill.color = color.withOpacity(1.0);
    canvas.drawPath(path_5, paint5Fill);

    Path path_6 = Path();
    path_6.moveTo(size.width * 0.6820540, size.height * 0.3426177);
    path_6.cubicTo(
        size.width * 0.6753996,
        size.height * 0.3366328,
        size.width * 0.6651577,
        size.height * 0.3371814,
        size.width * 0.6591771,
        size.height * 0.3438337);
    path_6.cubicTo(
        size.width * 0.6531965,
        size.height * 0.3504860,
        size.width * 0.6537408,
        size.height * 0.3607279,
        size.width * 0.6603931,
        size.height * 0.3667084);
    path_6.cubicTo(
        size.width * 0.7080410,
        size.height * 0.4095421,
        size.width * 0.7353672,
        size.height * 0.4707192,
        size.width * 0.7353672,
        size.height * 0.5345572);
    path_6.lineTo(size.width * 0.7353672, size.height * 0.6055378);
    path_6.cubicTo(
        size.width * 0.7353672,
        size.height * 0.6324773,
        size.width * 0.7335097,
        size.height * 0.6596242,
        size.width * 0.7298445,
        size.height * 0.6862268);
    path_6.cubicTo(
        size.width * 0.7286242,
        size.height * 0.6950907,
        size.width * 0.7348186,
        size.height * 0.7032635,
        size.width * 0.7436803,
        size.height * 0.7044838);
    path_6.cubicTo(
        size.width * 0.7444298,
        size.height * 0.7045875,
        size.width * 0.7451749,
        size.height * 0.7046371,
        size.width * 0.7459114,
        size.height * 0.7046371);
    path_6.cubicTo(
        size.width * 0.7538769,
        size.height * 0.7046371,
        size.width * 0.7608207,
        size.height * 0.6987581,
        size.width * 0.7619374,
        size.height * 0.6906458);
    path_6.cubicTo(
        size.width * 0.7658035,
        size.height * 0.6625832,
        size.width * 0.7677646,
        size.height * 0.6339482,
        size.width * 0.7677646,
        size.height * 0.6055356);
    path_6.lineTo(size.width * 0.7677646, size.height * 0.5345572);
    path_6.cubicTo(
        size.width * 0.7677667,
        size.height * 0.4615443,
        size.width * 0.7365248,
        size.height * 0.3915853,
        size.width * 0.6820540,
        size.height * 0.3426177);
    path_6.close();

    Paint paint6Fill = Paint()..style = PaintingStyle.fill;
    paint6Fill.color = color.withOpacity(1.0);
    canvas.drawPath(path_6, paint6Fill);

    Path path_7 = Path();
    path_7.moveTo(size.width * 0.6063261, size.height * 0.3306177);
    path_7.cubicTo(
        size.width * 0.6085745,
        size.height * 0.3316890,
        size.width * 0.6109438,
        size.height * 0.3321944,
        size.width * 0.6132786,
        size.height * 0.3321944);
    path_7.cubicTo(
        size.width * 0.6193326,
        size.height * 0.3321944,
        size.width * 0.6251404,
        size.height * 0.3287840,
        size.width * 0.6279158,
        size.height * 0.3229546);
    path_7.cubicTo(
        size.width * 0.6317624,
        size.height * 0.3148790,
        size.width * 0.6283305,
        size.height * 0.3052117,
        size.width * 0.6202549,
        size.height * 0.3013672);
    path_7.cubicTo(
        size.width * 0.5969158,
        size.height * 0.2902549,
        size.width * 0.5721102,
        size.height * 0.2827581,
        size.width * 0.5465270,
        size.height * 0.2790842);
    path_7.cubicTo(
        size.width * 0.5376587,
        size.height * 0.2778207,
        size.width * 0.5294622,
        size.height * 0.2839611,
        size.width * 0.5281901,
        size.height * 0.2928143);
    path_7.cubicTo(
        size.width * 0.5269179,
        size.height * 0.3016674,
        size.width * 0.5330648,
        size.height * 0.3098790,
        size.width * 0.5419201,
        size.height * 0.3111512);
    path_7.cubicTo(
        size.width * 0.5642700,
        size.height * 0.3143629,
        size.width * 0.5859374,
        size.height * 0.3209114,
        size.width * 0.6063261,
        size.height * 0.3306177);
    path_7.close();

    Paint paint7Fill = Paint()..style = PaintingStyle.fill;
    paint7Fill.color = color.withOpacity(1.0);
    canvas.drawPath(path_7, paint7Fill);

    Path path_8 = Path();
    path_8.moveTo(size.width * 0.5096674, size.height * 0.2073434);
    path_8.cubicTo(
        size.width * 0.5036069,
        size.height * 0.2073434,
        size.width * 0.4974773,
        size.height * 0.2075119,
        size.width * 0.4914449,
        size.height * 0.2078445);
    path_8.cubicTo(
        size.width * 0.4825119,
        size.height * 0.2083369,
        size.width * 0.4756695,
        size.height * 0.2159784,
        size.width * 0.4761620,
        size.height * 0.2249093);
    path_8.cubicTo(
        size.width * 0.4766566,
        size.height * 0.2338423,
        size.width * 0.4842894,
        size.height * 0.2407214,
        size.width * 0.4932289,
        size.height * 0.2401901);
    path_8.cubicTo(
        size.width * 0.4986695,
        size.height * 0.2398898,
        size.width * 0.5041987,
        size.height * 0.2397387,
        size.width * 0.5096652,
        size.height * 0.2397387);
    path_8.cubicTo(
        size.width * 0.6722268,
        size.height * 0.2397387,
        size.width * 0.8044816,
        size.height * 0.3719914,
        size.width * 0.8044816,
        size.height * 0.5345551);
    path_8.lineTo(size.width * 0.8044816, size.height * 0.6055356);
    path_8.cubicTo(
        size.width * 0.8044816,
        size.height * 0.6144838,
        size.width * 0.8117343,
        size.height * 0.6217343,
        size.width * 0.8206803,
        size.height * 0.6217343);
    path_8.cubicTo(
        size.width * 0.8296263,
        size.height * 0.6217343,
        size.width * 0.8368790,
        size.height * 0.6144838,
        size.width * 0.8368790,
        size.height * 0.6055356);
    path_8.lineTo(size.width * 0.8368790, size.height * 0.5345572);
    path_8.cubicTo(
        size.width * 0.8368812,
        size.height * 0.3541317,
        size.width * 0.6900929,
        size.height * 0.2073434,
        size.width * 0.5096674,
        size.height * 0.2073434);
    path_8.close();

    Paint paint8Fill = Paint()..style = PaintingStyle.fill;
    paint8Fill.color = color.withOpacity(1.0);
    canvas.drawPath(path_8, paint8Fill);

    Path path_9 = Path();
    path_9.moveTo(size.width * 0.3325529, size.height * 0.2952333);
    path_9.cubicTo(
        size.width * 0.3357430,
        size.height * 0.2952333,
        size.width * 0.3389676,
        size.height * 0.2942916,
        size.width * 0.3417862,
        size.height * 0.2923326);
    path_9.cubicTo(
        size.width * 0.3687365,
        size.height * 0.2735918,
        size.width * 0.3983348,
        size.height * 0.2596004,
        size.width * 0.4297624,
        size.height * 0.2507387);
    path_9.cubicTo(
        size.width * 0.4383737,
        size.height * 0.2483110,
        size.width * 0.4433866,
        size.height * 0.2393607,
        size.width * 0.4409590,
        size.height * 0.2307516);
    path_9.cubicTo(
        size.width * 0.4385313,
        size.height * 0.2221425,
        size.width * 0.4295788,
        size.height * 0.2171361,
        size.width * 0.4209719,
        size.height * 0.2195551);
    path_9.cubicTo(
        size.width * 0.3860691,
        size.height * 0.2293952,
        size.width * 0.3532052,
        size.height * 0.2449309,
        size.width * 0.3232916,
        size.height * 0.2657300);
    path_9.cubicTo(
        size.width * 0.3159460,
        size.height * 0.2708380,
        size.width * 0.3141317,
        size.height * 0.2809330,
        size.width * 0.3192397,
        size.height * 0.2882765);
    path_9.cubicTo(
        size.width * 0.3223866,
        size.height * 0.2928078,
        size.width * 0.3274276,
        size.height * 0.2952333,
        size.width * 0.3325529,
        size.height * 0.2952333);
    path_9.close();

    Paint paint9Fill = Paint()..style = PaintingStyle.fill;
    paint9Fill.color = color.withOpacity(1.0);
    canvas.drawPath(path_9, paint9Fill);

    Path path_10 = Path();
    path_10.moveTo(size.width * 0.2148510, size.height * 0.5986436);
    path_10.lineTo(size.width * 0.2148510, size.height * 0.5345572);
    path_10.cubicTo(
        size.width * 0.2148510,
        size.height * 0.4592009,
        size.width * 0.2433888,
        size.height * 0.3874341,
        size.width * 0.2952073,
        size.height * 0.3324730);
    path_10.cubicTo(
        size.width * 0.3013434,
        size.height * 0.3259633,
        size.width * 0.3010432,
        size.height * 0.3157127,
        size.width * 0.2945335,
        size.height * 0.3095745);
    path_10.cubicTo(
        size.width * 0.2880238,
        size.height * 0.3034363,
        size.width * 0.2777711,
        size.height * 0.3037408,
        size.width * 0.2716350,
        size.height * 0.3102484);
    path_10.cubicTo(
        size.width * 0.2141253,
        size.height * 0.3712441,
        size.width * 0.1824536,
        size.height * 0.4509071,
        size.width * 0.1824536,
        size.height * 0.5345572);
    path_10.lineTo(size.width * 0.1824536, size.height * 0.5986436);
    path_10.cubicTo(
        size.width * 0.1824536,
        size.height * 0.6074622,
        size.width * 0.1792052,
        size.height * 0.6159266,
        size.width * 0.1733089,
        size.height * 0.6224773);
    path_10.lineTo(size.width * 0.1533348, size.height * 0.6446695);
    path_10.cubicTo(
        size.width * 0.1473499,
        size.height * 0.6513197,
        size.width * 0.1478898,
        size.height * 0.6615616,
        size.width * 0.1545400,
        size.height * 0.6675464);
    path_10.cubicTo(
        size.width * 0.1576350,
        size.height * 0.6703348,
        size.width * 0.1615097,
        size.height * 0.6717063,
        size.width * 0.1653715,
        size.height * 0.6717063);
    path_10.cubicTo(
        size.width * 0.1698035,
        size.height * 0.6717063,
        size.width * 0.1742181,
        size.height * 0.6698985,
        size.width * 0.1774168,
        size.height * 0.6663456);
    path_10.lineTo(size.width * 0.1973909, size.height * 0.6441533);
    path_10.cubicTo(
        size.width * 0.2086501,
        size.height * 0.6316393,
        size.width * 0.2148510,
        size.height * 0.6154773,
        size.width * 0.2148510,
        size.height * 0.5986436);
    path_10.close();

    Paint paint10Fill = Paint()..style = PaintingStyle.fill;
    paint10Fill.color = color.withOpacity(1.0);
    canvas.drawPath(path_10, paint10Fill);

    Path path_11 = Path();
    path_11.moveTo(size.width * 0.8854233, size.height * 0.4084320);
    path_11.cubicTo(
        size.width * 0.8676566,
        size.height * 0.3556328,
        size.width * 0.8394212,
        size.height * 0.3079330,
        size.width * 0.8015011,
        size.height * 0.2666566);
    path_11.cubicTo(
        size.width * 0.7954471,
        size.height * 0.2600691,
        size.width * 0.7852009,
        size.height * 0.2596328,
        size.width * 0.7786134,
        size.height * 0.2656868);
    path_11.cubicTo(
        size.width * 0.7720259,
        size.height * 0.2717408,
        size.width * 0.7715918,
        size.height * 0.2819870,
        size.width * 0.7776436,
        size.height * 0.2885767);
    path_11.cubicTo(
        size.width * 0.8124752,
        size.height * 0.3264903,
        size.width * 0.8384082,
        size.height * 0.3702916,
        size.width * 0.8547192,
        size.height * 0.4187624);
    path_11.cubicTo(
        size.width * 0.8569957,
        size.height * 0.4255292,
        size.width * 0.8633067,
        size.height * 0.4297991,
        size.width * 0.8700691,
        size.height * 0.4297991);
    path_11.cubicTo(
        size.width * 0.8717819,
        size.height * 0.4297991,
        size.width * 0.8735248,
        size.height * 0.4295248,
        size.width * 0.8752376,
        size.height * 0.4289482);
    path_11.cubicTo(
        size.width * 0.8837149,
        size.height * 0.4260950,
        size.width * 0.8882765,
        size.height * 0.4169093,
        size.width * 0.8854233,
        size.height * 0.4084320);
    path_11.close();

    Paint paint11Fill = Paint()..style = PaintingStyle.fill;
    paint11Fill.color = color.withOpacity(1.0);
    canvas.drawPath(path_11, paint11Fill);

    Path path_12 = Path();
    path_12.moveTo(size.width * 0.6376825, size.height * 0.1594428);
    path_12.cubicTo(
        size.width * 0.6292225,
        size.height * 0.1565464,
        size.width * 0.6200086,
        size.height * 0.1610583,
        size.width * 0.6171123,
        size.height * 0.1695248);
    path_12.cubicTo(
        size.width * 0.6142160,
        size.height * 0.1779892,
        size.width * 0.6187300,
        size.height * 0.1871987,
        size.width * 0.6271944,
        size.height * 0.1900929);
    path_12.cubicTo(
        size.width * 0.6629136,
        size.height * 0.2023153,
        size.width * 0.6964492,
        size.height * 0.2200216,
        size.width * 0.7268704,
        size.height * 0.2427257);
    path_12.cubicTo(
        size.width * 0.7297797,
        size.height * 0.2448963,
        size.width * 0.7331771,
        size.height * 0.2459417,
        size.width * 0.7365464,
        size.height * 0.2459417);
    path_12.cubicTo(
        size.width * 0.7414838,
        size.height * 0.2459417,
        size.width * 0.7463607,
        size.height * 0.2436933,
        size.width * 0.7495421,
        size.height * 0.2394298);
    path_12.cubicTo(
        size.width * 0.7548942,
        size.height * 0.2322613,
        size.width * 0.7534168,
        size.height * 0.2221102,
        size.width * 0.7462484,
        size.height * 0.2167603);
    path_12.cubicTo(
        size.width * 0.7131231,
        size.height * 0.1920432,
        size.width * 0.6765961,
        size.height * 0.1727559,
        size.width * 0.6376825,
        size.height * 0.1594428);
    path_12.close();

    Paint paint12Fill = Paint()..style = PaintingStyle.fill;
    paint12Fill.color = color.withOpacity(1.0);
    canvas.drawPath(path_12, paint12Fill);

    Path path_13 = Path();
    path_13.moveTo(size.width * 0.2579741, size.height * 0.2719395);
    path_13.cubicTo(
        size.width * 0.3261145,
        size.height * 0.2066069,
        size.width * 0.4155011,
        size.height * 0.1706263,
        size.width * 0.5096674,
        size.height * 0.1706263);
    path_13.cubicTo(
        size.width * 0.5271533,
        size.height * 0.1706263,
        size.width * 0.5447365,
        size.height * 0.1718855,
        size.width * 0.5619266,
        size.height * 0.1743650);
    path_13.cubicTo(
        size.width * 0.5707883,
        size.height * 0.1756566,
        size.width * 0.5789957,
        size.height * 0.1695011,
        size.width * 0.5802743,
        size.height * 0.1606458);
    path_13.cubicTo(
        size.width * 0.5815529,
        size.height * 0.1517905,
        size.width * 0.5754125,
        size.height * 0.1435788,
        size.width * 0.5665572,
        size.height * 0.1423002);
    path_13.cubicTo(
        size.width * 0.5478359,
        size.height * 0.1396004,
        size.width * 0.5286955,
        size.height * 0.1382289,
        size.width * 0.5096674,
        size.height * 0.1382289);
    path_13.cubicTo(
        size.width * 0.4071037,
        size.height * 0.1382289,
        size.width * 0.3097538,
        size.height * 0.1774104,
        size.width * 0.2355529,
        size.height * 0.2485551);
    path_13.cubicTo(
        size.width * 0.1615832,
        size.height * 0.3194795,
        size.width * 0.1183240,
        size.height * 0.4146566,
        size.width * 0.1137451,
        size.height * 0.5165551);
    path_13.cubicTo(
        size.width * 0.1133434,
        size.height * 0.5254924,
        size.width * 0.1202635,
        size.height * 0.5330648,
        size.width * 0.1291987,
        size.height * 0.5334644);
    path_13.cubicTo(
        size.width * 0.1294471,
        size.height * 0.5334773,
        size.width * 0.1296933,
        size.height * 0.5334816,
        size.width * 0.1299395,
        size.height * 0.5334816);
    path_13.cubicTo(
        size.width * 0.1385508,
        size.height * 0.5334816,
        size.width * 0.1457192,
        size.height * 0.5266998,
        size.width * 0.1461102,
        size.height * 0.5180108);
    path_13.cubicTo(
        size.width * 0.1503110,
        size.height * 0.4244644,
        size.width * 0.1900389,
        size.height * 0.3370756,
        size.width * 0.2579741,
        size.height * 0.2719395);
    path_13.close();

    Paint paint13Fill = Paint()..style = PaintingStyle.fill;
    paint13Fill.color = color.withOpacity(1.0);
    canvas.drawPath(path_13, paint13Fill);

    Path path_14 = Path();
    path_14.moveTo(size.width * 0.5096674, size.height * 0.06911447);
    path_14.cubicTo(
        size.width * 0.4734428,
        size.height * 0.06911447,
        size.width * 0.4373456,
        size.height * 0.07331317,
        size.width * 0.4023801,
        size.height * 0.08159395);
    path_14.cubicTo(
        size.width * 0.3936739,
        size.height * 0.08365443,
        size.width * 0.3882894,
        size.height * 0.09238445,
        size.width * 0.3903499,
        size.height * 0.1010886);
    path_14.cubicTo(
        size.width * 0.3924125,
        size.height * 0.1097927,
        size.width * 0.4011425,
        size.height * 0.1151793,
        size.width * 0.4098467,
        size.height * 0.1131166);
    path_14.cubicTo(
        size.width * 0.4423693,
        size.height * 0.1054190,
        size.width * 0.4759525,
        size.height * 0.1015119,
        size.width * 0.5096674,
        size.height * 0.1015119);
    path_14.cubicTo(
        size.width * 0.6284492,
        size.height * 0.1015119,
        size.width * 0.7393261,
        size.height * 0.1488359,
        size.width * 0.8218704,
        size.height * 0.2347624);
    path_14.cubicTo(
        size.width * 0.8250518,
        size.height * 0.2380734,
        size.width * 0.8292981,
        size.height * 0.2397408,
        size.width * 0.8335551,
        size.height * 0.2397408);
    path_14.cubicTo(
        size.width * 0.8375918,
        size.height * 0.2397408,
        size.width * 0.8416350,
        size.height * 0.2382419,
        size.width * 0.8447754,
        size.height * 0.2352246);
    path_14.cubicTo(
        size.width * 0.8512268,
        size.height * 0.2290259,
        size.width * 0.8514341,
        size.height * 0.2187711,
        size.width * 0.8452354,
        size.height * 0.2123218);
    path_14.cubicTo(
        size.width * 0.8022268,
        size.height * 0.1675508,
        size.width * 0.7517063,
        size.height * 0.1323305,
        size.width * 0.6950799,
        size.height * 0.1076458);
    path_14.cubicTo(
        size.width * 0.6364276,
        size.height * 0.08207775,
        size.width * 0.5740454,
        size.height * 0.06911447,
        size.width * 0.5096674,
        size.height * 0.06911447);
    path_14.close();

    Paint paint14Fill = Paint()..style = PaintingStyle.fill;
    paint14Fill.color = color.withOpacity(1.0);
    canvas.drawPath(path_14, paint14Fill);

    Path path_15 = Path();
    path_15.moveTo(size.width * 0.1458035, size.height * 0.2708510);
    path_15.cubicTo(
        size.width * 0.1487667,
        size.height * 0.2731706,
        size.width * 0.1522851,
        size.height * 0.2742959,
        size.width * 0.1557797,
        size.height * 0.2742959);
    path_15.cubicTo(
        size.width * 0.1605896,
        size.height * 0.2742959,
        size.width * 0.1653499,
        size.height * 0.2721641,
        size.width * 0.1685443,
        size.height * 0.2680842);
    path_15.cubicTo(
        size.width * 0.2147106,
        size.height * 0.2091166,
        size.width * 0.2754881,
        size.height * 0.1628639,
        size.width * 0.3443045,
        size.height * 0.1343218);
    path_15.cubicTo(
        size.width * 0.3525680,
        size.height * 0.1308942,
        size.width * 0.3564903,
        size.height * 0.1214168,
        size.width * 0.3530626,
        size.height * 0.1131533);
    path_15.cubicTo(
        size.width * 0.3496350,
        size.height * 0.1048898,
        size.width * 0.3401533,
        size.height * 0.1009633,
        size.width * 0.3318942,
        size.height * 0.1043952);
    path_15.cubicTo(
        size.width * 0.2579395,
        size.height * 0.1350670,
        size.width * 0.1926328,
        size.height * 0.1847624,
        size.width * 0.1430367,
        size.height * 0.2481080);
    path_15.cubicTo(
        size.width * 0.1375205,
        size.height * 0.2551555,
        size.width * 0.1387603,
        size.height * 0.2653369,
        size.width * 0.1458035,
        size.height * 0.2708510);
    path_15.close();

    Paint paint15Fill = Paint()..style = PaintingStyle.fill;
    paint15Fill.color = color.withOpacity(1.0);
    canvas.drawPath(path_15, paint15Fill);

    Path path_16 = Path();
    path_16.moveTo(size.width * 0.2850605, size.height * 0.08363931);
    path_16.cubicTo(
        size.width * 0.2874233,
        size.height * 0.08363931,
        size.width * 0.2898229,
        size.height * 0.08312095,
        size.width * 0.2920907,
        size.height * 0.08202376);
    path_16.cubicTo(
        size.width * 0.3602937,
        size.height * 0.04909287,
        size.width * 0.4334968,
        size.height * 0.03239741,
        size.width * 0.5096674,
        size.height * 0.03239741);
    path_16.cubicTo(
        size.width * 0.5493607,
        size.height * 0.03239741,
        size.width * 0.5888942,
        size.height * 0.03706695,
        size.width * 0.6271641,
        size.height * 0.04627646);
    path_16.cubicTo(
        size.width * 0.6358575,
        size.height * 0.04836285,
        size.width * 0.6446091,
        size.height * 0.04301512,
        size.width * 0.6467019,
        size.height * 0.03431749);
    path_16.cubicTo(
        size.width * 0.6487948,
        size.height * 0.02561987,
        size.width * 0.6434406,
        size.height * 0.01687041,
        size.width * 0.6347408,
        size.height * 0.01477754);
    path_16.cubicTo(size.width * 0.5939935, size.height * 0.004971922,
        size.width * 0.5519114, 0, size.width * 0.5096674, 0);
    path_16.cubicTo(
        size.width * 0.4285788,
        0,
        size.width * 0.3506371,
        size.height * 0.01777970,
        size.width * 0.2780065,
        size.height * 0.05284881);
    path_16.cubicTo(
        size.width * 0.2699503,
        size.height * 0.05673866,
        size.width * 0.2665724,
        size.height * 0.06642333,
        size.width * 0.2704622,
        size.height * 0.07447948);
    path_16.cubicTo(
        size.width * 0.2732549,
        size.height * 0.08026566,
        size.width * 0.2790389,
        size.height * 0.08363931,
        size.width * 0.2850605,
        size.height * 0.08363931);
    path_16.close();

    Paint paint16Fill = Paint()..style = PaintingStyle.fill;
    paint16Fill.color = color.withOpacity(1.0);
    canvas.drawPath(path_16, paint16Fill);

    Path path_17 = Path();
    path_17.moveTo(size.width * 0.6948683, size.height * 0.06778186);
    path_17.cubicTo(
        size.width * 0.7115680,
        size.height * 0.07443197,
        size.width * 0.7280972,
        size.height * 0.08207775,
        size.width * 0.7439957,
        size.height * 0.09050324);
    path_17.cubicTo(
        size.width * 0.7464125,
        size.height * 0.09178618,
        size.width * 0.7490086,
        size.height * 0.09239309,
        size.width * 0.7515659,
        size.height * 0.09239309);
    path_17.cubicTo(
        size.width * 0.7573715,
        size.height * 0.09239309,
        size.width * 0.7629849,
        size.height * 0.08926350,
        size.width * 0.7658920,
        size.height * 0.08377538);
    path_17.cubicTo(
        size.width * 0.7700799,
        size.height * 0.07587041,
        size.width * 0.7670691,
        size.height * 0.06606695,
        size.width * 0.7591641,
        size.height * 0.06187689);
    path_17.cubicTo(
        size.width * 0.7422376,
        size.height * 0.05290713,
        size.width * 0.7246371,
        size.height * 0.04476674,
        size.width * 0.7068531,
        size.height * 0.03768467);
    path_17.cubicTo(
        size.width * 0.6985400,
        size.height * 0.03437365,
        size.width * 0.6891210,
        size.height * 0.03842981,
        size.width * 0.6858099,
        size.height * 0.04673866);
    path_17.cubicTo(
        size.width * 0.6825011,
        size.height * 0.05504968,
        size.width * 0.6865572,
        size.height * 0.06447300,
        size.width * 0.6948683,
        size.height * 0.06778186);
    path_17.close();

    Paint paint17Fill = Paint()..style = PaintingStyle.fill;
    paint17Fill.color = color.withOpacity(1.0);
    canvas.drawPath(path_17, paint17Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
