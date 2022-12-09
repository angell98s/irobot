import 'package:flutter/material.dart';
import 'package:irobot/src/common_widgets/responsive_center.dart';
import 'package:irobot/src/constants/app_sizes.dart';
import 'package:irobot/src/localization/app_localizations_context.dart';

class UnderstandScreen extends StatelessWidget {
  const UnderstandScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.height - kToolbarHeight;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 123, 201, 146),
      appBar: AppBar(title: Text(context.loc.unders_assimi.toUpperCase())),
      body: CustomScrollView(
        slivers: [
          ResponsiveSliverCenter(
            padding: const EdgeInsets.all(Sizes.p16),
            child: CustomPaint(
              size: Size(
                  width,
                  (width * 0.9465393794749404)
                      .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
              painter: RPSCustomPainter(),
            ),
          ),
        ],
      ),
    );
  }
}

//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.6682578, size.height * 0.7544125);
    path_0.cubicTo(
        size.width * 0.6653938,
        size.height * 0.7826525,
        size.width * 0.6391408,
        size.height * 0.8134140,
        size.width * 0.6210024,
        size.height * 0.8315683);
    path_0.cubicTo(
        size.width * 0.6066826,
        size.height * 0.8350983,
        size.width * 0.5809069,
        size.height * 0.8431669,
        size.width * 0.5718377,
        size.height * 0.8497226);
    path_0.cubicTo(
        size.width * 0.5584726,
        size.height * 0.8587998,
        size.width * 0.5479714,
        size.height * 0.8769541,
        size.width * 0.5546539,
        size.height * 0.8930913);
    path_0.cubicTo(
        size.width * 0.5551313,
        size.height * 0.8946041,
        size.width * 0.6167064,
        size.height * 0.8930913,
        size.width * 0.6381862,
        size.height * 0.8905698);
    path_0.cubicTo(
        size.width * 0.6596659,
        size.height * 0.8880484,
        size.width * 0.6649165,
        size.height * 0.8648512,
        size.width * 0.6725537,
        size.height * 0.8522441);
    path_0.cubicTo(
        size.width * 0.6916468,
        size.height * 0.8179526,
        size.width * 0.7217184,
        size.height * 0.7887040,
        size.width * 0.7389021,
        size.height * 0.7660111);
    path_0.cubicTo(
        size.width * 0.7517900,
        size.height * 0.7493696,
        size.width * 0.7460621,
        size.height * 0.7397882,
        size.width * 0.7174224,
        size.height * 0.7115482);
    path_0.cubicTo(
        size.width * 0.6949881,
        size.height * 0.6893596,
        size.width * 0.7073986,
        size.height * 0.6631367,
        size.width * 0.7241050,
        size.height * 0.6409481);
    path_0.cubicTo(
        size.width * 0.7579952,
        size.height * 0.5950580,
        size.width * 0.7904535,
        size.height * 0.5289965,
        size.width * 0.7236277,
        size.height * 0.4881493);
    path_0.cubicTo(
        size.width * 0.6959427,
        size.height * 0.4715078,
        size.width * 0.6525060,
        size.height * 0.4689864,
        size.width * 0.6214797,
        size.height * 0.4725164);
    path_0.cubicTo(
        size.width * 0.5837709,
        size.height * 0.4765507,
        size.width * 0.5727924,
        size.height * 0.4911750,
        size.width * 0.5627685,
        size.height * 0.5284922);
    path_0.cubicTo(
        size.width * 0.5527446,
        size.height * 0.5653051,
        size.width * 0.5451074,
        size.height * 0.6132123,
        size.width * 0.5570406,
        size.height * 0.6505295);
    path_0.cubicTo(
        size.width * 0.5680191,
        size.height * 0.6853253,
        size.width * 0.6124105,
        size.height * 0.7014624,
        size.width * 0.6400955,
        size.height * 0.7181039);
    path_0.cubicTo(
        size.width * 0.6553699,
        size.height * 0.7271810,
        size.width * 0.6701671,
        size.height * 0.7317196,
        size.width * 0.6682578,
        size.height * 0.7544125);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xffF0F4F6).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.6787589, size.height * 0.6273323);
    path_1.cubicTo(
        size.width * 0.6859189,
        size.height * 0.6348966,
        size.width * 0.6959427,
        size.height * 0.6565809,
        size.width * 0.7026253,
        size.height * 0.6792738);
    path_1.cubicTo(
        size.width * 0.7131265,
        size.height * 0.6500252,
        size.width * 0.7451074,
        size.height * 0.6147252,
        size.width * 0.7517900,
        size.height * 0.5930408);
    path_1.cubicTo(
        size.width * 0.7632458,
        size.height * 0.5562279,
        size.width * 0.7584726,
        size.height * 0.5088250,
        size.width * 0.7236277,
        size.height * 0.4876450);
    path_1.cubicTo(
        size.width * 0.6959427,
        size.height * 0.4710035,
        size.width * 0.6525060,
        size.height * 0.4684821,
        size.width * 0.6214797,
        size.height * 0.4720121);
    path_1.cubicTo(
        size.width * 0.5570406,
        size.height * 0.4790721,
        size.width * 0.5451074,
        size.height * 0.5521936,
        size.width * 0.5460621,
        size.height * 0.6046394);
    path_1.cubicTo(
        size.width * 0.5813842,
        size.height * 0.5930408,
        size.width * 0.6114558,
        size.height * 0.5637922,
        size.width * 0.6429594,
        size.height * 0.5960666);
    path_1.cubicTo(
        size.width * 0.6520286,
        size.height * 0.6056480,
        size.width * 0.6663484,
        size.height * 0.6147252,
        size.width * 0.6787589,
        size.height * 0.6273323);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = const Color(0xffC8CCCD).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.6682578, size.height * 0.7544125);
    path_2.cubicTo(
        size.width * 0.6653938,
        size.height * 0.7826525,
        size.width * 0.6391408,
        size.height * 0.8134140,
        size.width * 0.6210024,
        size.height * 0.8315683);
    path_2.cubicTo(
        size.width * 0.6066826,
        size.height * 0.8350983,
        size.width * 0.5809069,
        size.height * 0.8431669,
        size.width * 0.5718377,
        size.height * 0.8497226);
    path_2.cubicTo(
        size.width * 0.5584726,
        size.height * 0.8587998,
        size.width * 0.5479714,
        size.height * 0.8769541,
        size.width * 0.5546539,
        size.height * 0.8930913);
    path_2.cubicTo(
        size.width * 0.5551313,
        size.height * 0.8946041,
        size.width * 0.6167064,
        size.height * 0.8930913,
        size.width * 0.6381862,
        size.height * 0.8905698);
    path_2.cubicTo(
        size.width * 0.6596659,
        size.height * 0.8880484,
        size.width * 0.6649165,
        size.height * 0.8648512,
        size.width * 0.6725537,
        size.height * 0.8522441);
    path_2.cubicTo(
        size.width * 0.6916468,
        size.height * 0.8179526,
        size.width * 0.7217184,
        size.height * 0.7887040,
        size.width * 0.7389021,
        size.height * 0.7660111);
    path_2.cubicTo(
        size.width * 0.7517900,
        size.height * 0.7493696,
        size.width * 0.7460621,
        size.height * 0.7397882,
        size.width * 0.7174224,
        size.height * 0.7115482);
    path_2.cubicTo(
        size.width * 0.6949881,
        size.height * 0.6893596,
        size.width * 0.7073986,
        size.height * 0.6631367,
        size.width * 0.7241050,
        size.height * 0.6409481);
    path_2.cubicTo(
        size.width * 0.7579952,
        size.height * 0.5950580,
        size.width * 0.7904535,
        size.height * 0.5289965,
        size.width * 0.7236277,
        size.height * 0.4881493);
    path_2.cubicTo(
        size.width * 0.6959427,
        size.height * 0.4715078,
        size.width * 0.6525060,
        size.height * 0.4689864,
        size.width * 0.6214797,
        size.height * 0.4725164);
    path_2.cubicTo(
        size.width * 0.5837709,
        size.height * 0.4765507,
        size.width * 0.5727924,
        size.height * 0.4911750,
        size.width * 0.5627685,
        size.height * 0.5284922);
    path_2.cubicTo(
        size.width * 0.5527446,
        size.height * 0.5653051,
        size.width * 0.5451074,
        size.height * 0.6132123,
        size.width * 0.5570406,
        size.height * 0.6505295);
    path_2.cubicTo(
        size.width * 0.5680191,
        size.height * 0.6853253,
        size.width * 0.6124105,
        size.height * 0.7014624,
        size.width * 0.6400955,
        size.height * 0.7181039);
    path_2.cubicTo(
        size.width * 0.6553699,
        size.height * 0.7271810,
        size.width * 0.6701671,
        size.height * 0.7317196,
        size.width * 0.6682578,
        size.height * 0.7544125);
    path_2.close();

    Paint paint2Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.006765155;
    paint2Stroke.color = const Color(0xff000000).withOpacity(1.0);
    paint2Stroke.strokeCap = StrokeCap.round;
    paint2Stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_2, paint2Stroke);

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.2276850, size.height * 0.6616238);
    path_3.cubicTo(
        size.width * 0.2434368,
        size.height * 0.6843167,
        size.width * 0.2453461,
        size.height * 0.6858296,
        size.width * 0.2553699,
        size.height * 0.7115482);
    path_3.cubicTo(
        size.width * 0.2668258,
        size.height * 0.7397882,
        size.width * 0.2768496,
        size.height * 0.7685325,
        size.width * 0.2768496,
        size.height * 0.7997983);
    path_3.cubicTo(
        size.width * 0.2768496,
        size.height * 0.8335855,
        size.width * 0.2749403,
        size.height * 0.8623298,
        size.width * 0.2639618,
        size.height * 0.8930913);
    path_3.cubicTo(
        size.width * 0.2467780,
        size.height * 0.9112456,
        size.width * 0.2295943,
        size.height * 0.9319213,
        size.width * 0.2272076,
        size.height * 0.9546142);
    path_3.cubicTo(
        size.width * 0.2353222,
        size.height * 0.9737771,
        size.width * 0.2887828,
        size.height * 0.9611699,
        size.width * 0.3045346,
        size.height * 0.9591528);
    path_3.cubicTo(
        size.width * 0.3202864,
        size.height * 0.9571357,
        size.width * 0.3198091,
        size.height * 0.9334342,
        size.width * 0.3236277,
        size.height * 0.9248613);
    path_3.cubicTo(
        size.width * 0.3303103,
        size.height * 0.9117499,
        size.width * 0.3374702,
        size.height * 0.9117499,
        size.width * 0.3365155,
        size.height * 0.8976299);
    path_3.cubicTo(
        size.width * 0.3341289,
        size.height * 0.8633384,
        size.width * 0.3303103,
        size.height * 0.8593041,
        size.width * 0.3341289,
        size.height * 0.8477055);
    path_3.cubicTo(
        size.width * 0.3431981,
        size.height * 0.8224912,
        size.width * 0.3446301,
        size.height * 0.8270298,
        size.width * 0.3403341,
        size.height * 0.8023197);
    path_3.cubicTo(
        size.width * 0.3322196,
        size.height * 0.7549168,
        size.width * 0.3298329,
        size.height * 0.7342410,
        size.width * 0.3231504,
        size.height * 0.6822995);
    path_3.cubicTo(
        size.width * 0.3813842,
        size.height * 0.6752395,
        size.width * 0.4415274,
        size.height * 0.6913767,
        size.width * 0.4735084,
        size.height * 0.6414523);
    path_3.cubicTo(
        size.width * 0.5508353,
        size.height * 0.6162380,
        size.width * 0.5541766,
        size.height * 0.5456379,
        size.width * 0.6066826,
        size.height * 0.5395865);
    path_3.cubicTo(
        size.width * 0.6319809,
        size.height * 0.5365608,
        size.width * 0.6591885,
        size.height * 0.5390822,
        size.width * 0.6701671,
        size.height * 0.5456379);
    path_3.cubicTo(
        size.width * 0.6883055,
        size.height * 0.5562279,
        size.width * 0.6897375,
        size.height * 0.5819465,
        size.width * 0.7073986,
        size.height * 0.6152295);
    path_3.cubicTo(
        size.width * 0.7274463,
        size.height * 0.6525466,
        size.width * 0.7350835,
        size.height * 0.6580938,
        size.width * 0.7675418,
        size.height * 0.6787695);
    path_3.cubicTo(
        size.width * 0.8286396,
        size.height * 0.7170953,
        size.width * 0.8405728,
        size.height * 0.7438225,
        size.width * 0.8534606,
        size.height * 0.8139183);
    path_3.cubicTo(
        size.width * 0.8568019,
        size.height * 0.8320726,
        size.width * 0.8649165,
        size.height * 0.8724155,
        size.width * 0.8534606,
        size.height * 0.8865356);
    path_3.cubicTo(
        size.width * 0.8319809,
        size.height * 0.8885527,
        size.width * 0.8062053,
        size.height * 0.9067070,
        size.width * 0.8105012,
        size.height * 0.9384771);
    path_3.cubicTo(
        size.width * 0.8276850,
        size.height * 0.9520928,
        size.width * 0.8768496,
        size.height * 0.9430156,
        size.width * 0.8983294,
        size.height * 0.9359556);
    path_3.cubicTo(
        size.width * 0.9207637,
        size.height * 0.9288956,
        size.width * 0.9131265,
        size.height * 0.9021684,
        size.width * 0.9136038,
        size.height * 0.8678770);
    path_3.cubicTo(
        size.width * 0.9140811,
        size.height * 0.8376198,
        size.width * 0.9116945,
        size.height * 0.7997983,
        size.width * 0.9178998,
        size.height * 0.7700454);
    path_3.cubicTo(
        size.width * 0.9221957,
        size.height * 0.7498739,
        size.width * 0.9221957,
        size.height * 0.7201210,
        size.width * 0.9102625,
        size.height * 0.7090267);
    path_3.cubicTo(
        size.width * 0.8945107,
        size.height * 0.6938981,
        size.width * 0.8883055,
        size.height * 0.6838124,
        size.width * 0.8811456,
        size.height * 0.6611195);
    path_3.cubicTo(
        size.width * 0.8715990,
        size.height * 0.6313666,
        size.width * 0.8692124,
        size.height * 0.5859808,
        size.width * 0.8649165,
        size.height * 0.5542108);
    path_3.cubicTo(
        size.width * 0.8639618,
        size.height * 0.5461422,
        size.width * 0.8505967,
        size.height * 0.4674735,
        size.width * 0.8453461,
        size.height * 0.4659607);
    path_3.cubicTo(
        size.width * 0.8763723,
        size.height * 0.5199193,
        size.width * 0.8863962,
        size.height * 0.5653051,
        size.width * 0.9112172,
        size.height * 0.5995966);
    path_3.cubicTo(
        size.width * 0.9255370,
        size.height * 0.6192637,
        size.width * 0.9627685,
        size.height * 0.6475038,
        size.width * 0.9928401,
        size.height * 0.7065053);
    path_3.cubicTo(
        size.width * 1.001432,
        size.height * 0.6838124,
        size.width * 0.9880668,
        size.height * 0.6157337,
        size.width * 0.9775656,
        size.height * 0.5955623);
    path_3.cubicTo(
        size.width * 0.9646778,
        size.height * 0.5703480,
        size.width * 0.9384248,
        size.height * 0.5405951,
        size.width * 0.9217184,
        size.height * 0.5173979);
    path_3.cubicTo(
        size.width * 0.8873508,
        size.height * 0.4710035,
        size.width * 0.8687351,
        size.height * 0.4120020,
        size.width * 0.8276850,
        size.height * 0.3721634);
    path_3.cubicTo(
        size.width * 0.7412888,
        size.height * 0.2879476,
        size.width * 0.6424821,
        size.height * 0.2627332,
        size.width * 0.5274463,
        size.height * 0.2748361);
    path_3.cubicTo(
        size.width * 0.4572792,
        size.height * 0.2818961,
        size.width * 0.3789976,
        size.height * 0.2581947,
        size.width * 0.3069212,
        size.height * 0.2536561);
    path_3.cubicTo(
        size.width * 0.2510740,
        size.height * 0.2501261,
        size.width * 0.1947494,
        size.height * 0.2783661,
        size.width * 0.1661098,
        size.height * 0.3313162);
    path_3.cubicTo(
        size.width * 0.1517900,
        size.height * 0.3580434,
        size.width * 0.1661098,
        size.height * 0.4397378,
        size.width * 0.1675418,
        size.height * 0.4684821);
    path_3.cubicTo(
        size.width * 0.1694511,
        size.height * 0.5088250,
        size.width * 0.1603819,
        size.height * 0.5456379,
        size.width * 0.1742243,
        size.height * 0.5864851);
    path_3.cubicTo(
        size.width * 0.1856802,
        size.height * 0.6152295,
        size.width * 0.2105012,
        size.height * 0.6369138,
        size.width * 0.2276850,
        size.height * 0.6616238);
    path_3.close();

    Paint paint3Fill = Paint()..style = PaintingStyle.fill;
    paint3Fill.color = const Color(0xffFFFFFF).withOpacity(1.0);
    canvas.drawPath(path_3, paint3Fill);

    Path path_4 = Path();
    path_4.moveTo(size.width * 0.8047733, size.height * 0.6964196);
    path_4.cubicTo(
        size.width * 0.8343675,
        size.height * 0.7276853,
        size.width * 0.8467780,
        size.height * 0.7710540,
        size.width * 0.8548926,
        size.height * 0.8134140);
    path_4.lineTo(size.width * 0.8548926, size.height * 0.8134140);
    path_4.cubicTo(
        size.width * 0.8591885,
        size.height * 0.8361069,
        size.width * 0.8577566,
        size.height * 0.8598084,
        size.width * 0.8577566,
        size.height * 0.8825013);
    path_4.cubicTo(
        size.width * 0.8634845,
        size.height * 0.8835098,
        size.width * 0.9026253,
        size.height * 0.8900656,
        size.width * 0.9016706,
        size.height * 0.8991427);
    path_4.cubicTo(
        size.width * 0.9035800,
        size.height * 0.8643469,
        size.width * 0.8806683,
        size.height * 0.8391326,
        size.width * 0.8844869,
        size.height * 0.8018154);
    path_4.cubicTo(
        size.width * 0.8863962,
        size.height * 0.7816440,
        size.width * 0.8906921,
        size.height * 0.7604639,
        size.width * 0.8768496,
        size.height * 0.7428139);
    path_4.cubicTo(
        size.width * 0.8625298,
        size.height * 0.7246596,
        size.width * 0.8257757,
        size.height * 0.7049924,
        size.width * 0.8047733,
        size.height * 0.6964196);
    path_4.close();

    Paint paint4Fill = Paint()..style = PaintingStyle.fill;
    paint4Fill.color = const Color(0xffF0F4F6).withOpacity(1.0);
    canvas.drawPath(path_4, paint4Fill);

    Path path_5 = Path();
    path_5.moveTo(size.width * 0.2859189, size.height * 0.8396369);
    path_5.cubicTo(
        size.width * 0.2668258,
        size.height * 0.8461926,
        size.width * 0.2706444,
        size.height * 0.8885527,
        size.width * 0.2453461,
        size.height * 0.9193142);
    path_5.cubicTo(
        size.width * 0.2782816,
        size.height * 0.9198185,
        size.width * 0.2921241,
        size.height * 0.9092284,
        size.width * 0.3212411,
        size.height * 0.9238527);
    path_5.cubicTo(
        size.width * 0.3260143,
        size.height * 0.9162885,
        size.width * 0.3298329,
        size.height * 0.9016641,
        size.width * 0.3298329,
        size.height * 0.8935956);
    path_5.cubicTo(
        size.width * 0.2902148,
        size.height * 0.9001513,
        size.width * 0.3159905,
        size.height * 0.8643469,
        size.width * 0.3011933,
        size.height * 0.8461926);
    path_5.cubicTo(
        size.width * 0.2964200,
        size.height * 0.8396369,
        size.width * 0.2911695,
        size.height * 0.8381241,
        size.width * 0.2859189,
        size.height * 0.8396369);
    path_5.close();

    Paint paint5Fill = Paint()..style = PaintingStyle.fill;
    paint5Fill.color = const Color(0xffF0F4F6).withOpacity(1.0);
    canvas.drawPath(path_5, paint5Fill);

    Path path_6 = Path();
    path_6.moveTo(size.width * 0.8591885, size.height * 0.4881493);
    path_6.cubicTo(
        size.width * 0.8610979,
        size.height * 0.5259708,
        size.width * 0.8935561,
        size.height * 0.5738780,
        size.width * 0.9126492,
        size.height * 0.6001009);
    path_6.cubicTo(
        size.width * 0.9269690,
        size.height * 0.6197680,
        size.width * 0.9642005,
        size.height * 0.6475038,
        size.width * 0.9942721,
        size.height * 0.7065053);
    path_6.cubicTo(
        size.width * 1.018138,
        size.height * 0.6434695,
        size.width * 0.9245823,
        size.height * 0.5890066,
        size.width * 0.9007160,
        size.height * 0.5375693);
    path_6.cubicTo(
        size.width * 0.8983294,
        size.height * 0.5330308,
        size.width * 0.8610979,
        size.height * 0.4664650,
        size.width * 0.8596659,
        size.height * 0.4760464);
    path_6.cubicTo(
        size.width * 0.8591885,
        size.height * 0.4800807,
        size.width * 0.8591885,
        size.height * 0.4841150,
        size.width * 0.8591885,
        size.height * 0.4881493);
    path_6.close();

    Paint paint6Fill = Paint()..style = PaintingStyle.fill;
    paint6Fill.color = const Color(0xffF0F4F6).withOpacity(1.0);
    canvas.drawPath(path_6, paint6Fill);

    Path path_7 = Path();
    path_7.moveTo(size.width * 0.4291169, size.height * 0.6742310);
    path_7.cubicTo(
        size.width * 0.4477327,
        size.height * 0.6686838,
        size.width * 0.4606205,
        size.height * 0.6459909,
        size.width * 0.4749403,
        size.height * 0.6414523);
    path_7.cubicTo(
        size.width * 0.5198091,
        size.height * 0.6268280,
        size.width * 0.5603819,
        size.height * 0.5758951,
        size.width * 0.5918854,
        size.height * 0.5421079);
    path_7.cubicTo(
        size.width * 0.5613365,
        size.height * 0.5219365,
        size.width * 0.5255370,
        size.height * 0.5552194,
        size.width * 0.5026253,
        size.height * 0.5728694);
    path_7.cubicTo(
        size.width * 0.4825776,
        size.height * 0.5879980,
        size.width * 0.4606205,
        size.height * 0.5950580,
        size.width * 0.4405728,
        size.height * 0.6076652);
    path_7.cubicTo(
        size.width * 0.4272076,
        size.height * 0.6162380,
        size.width * 0.4100239,
        size.height * 0.6404438,
        size.width * 0.3923628,
        size.height * 0.6364095);
    path_7.cubicTo(
        size.width * 0.3875895,
        size.height * 0.6354009,
        size.width * 0.3637232,
        size.height * 0.6071609,
        size.width * 0.3651551,
        size.height * 0.6051437);
    path_7.cubicTo(
        size.width * 0.3551313,
        size.height * 0.6162380,
        size.width * 0.3589499,
        size.height * 0.6263238,
        size.width * 0.3408115,
        size.height * 0.6283409);
    path_7.cubicTo(
        size.width * 0.3303103,
        size.height * 0.6293495,
        size.width * 0.3198091,
        size.height * 0.6197680,
        size.width * 0.3102625,
        size.height * 0.6162380);
    path_7.cubicTo(
        size.width * 0.2949881,
        size.height * 0.6111952,
        size.width * 0.2949881,
        size.height * 0.6212809,
        size.width * 0.2835322,
        size.height * 0.6258195);
    path_7.cubicTo(
        size.width * 0.2644391,
        size.height * 0.6338880,
        size.width * 0.2553699,
        size.height * 0.6318709,
        size.width * 0.2367542,
        size.height * 0.6197680);
    path_7.cubicTo(
        size.width * 0.2348449,
        size.height * 0.6646495,
        size.width * 0.2830549,
        size.height * 0.6812910,
        size.width * 0.3169451,
        size.height * 0.6838124);
    path_7.cubicTo(
        size.width * 0.3527446,
        size.height * 0.6863338,
        size.width * 0.3937947,
        size.height * 0.6848210,
        size.width * 0.4291169,
        size.height * 0.6742310);
    path_7.close();

    Paint paint7Fill = Paint()..style = PaintingStyle.fill;
    paint7Fill.color = const Color(0xffF0F4F6).withOpacity(1.0);
    canvas.drawPath(path_7, paint7Fill);

    Path path_8 = Path();
    path_8.moveTo(size.width * 0.3050119, size.height * 0.6545638);
    path_8.cubicTo(
        size.width * 0.2940334,
        size.height * 0.6525466,
        size.width * 0.2821002,
        size.height * 0.6469995,
        size.width * 0.2711217,
        size.height * 0.6480081);
    path_8.cubicTo(
        size.width * 0.2620525,
        size.height * 0.6490166,
        size.width * 0.2892601,
        size.height * 0.6767524,
        size.width * 0.2940334,
        size.height * 0.6787695);
    path_8.cubicTo(
        size.width * 0.3059666,
        size.height * 0.6838124,
        size.width * 0.3212411,
        size.height * 0.6833081,
        size.width * 0.3336516,
        size.height * 0.6828038);
    path_8.cubicTo(
        size.width * 0.3584726,
        size.height * 0.6822995,
        size.width * 0.3842482,
        size.height * 0.6782653,
        size.width * 0.4085919,
        size.height * 0.6727181);
    path_8.cubicTo(
        size.width * 0.4334129,
        size.height * 0.6666667,
        size.width * 0.4682578,
        size.height * 0.6580938,
        size.width * 0.4878282,
        size.height * 0.6394352);
    path_8.cubicTo(
        size.width * 0.4625298,
        size.height * 0.6303580,
        size.width * 0.4491647,
        size.height * 0.6424609,
        size.width * 0.4252983,
        size.height * 0.6485124);
    path_8.cubicTo(
        size.width * 0.4085919,
        size.height * 0.6530509,
        size.width * 0.3880668,
        size.height * 0.6585981,
        size.width * 0.3713604,
        size.height * 0.6596067);
    path_8.cubicTo(
        size.width * 0.3484487,
        size.height * 0.6611195,
        size.width * 0.3274463,
        size.height * 0.6585981,
        size.width * 0.3050119,
        size.height * 0.6545638);
    path_8.close();

    Paint paint8Fill = Paint()..style = PaintingStyle.fill;
    paint8Fill.color = const Color(0xffC8CCCD).withOpacity(1.0);
    canvas.drawPath(path_8, paint8Fill);

    Path path_9 = Path();
    path_9.moveTo(size.width * 0.1918854, size.height * 0.6172466);
    path_9.cubicTo(
        size.width * 0.1957041,
        size.height * 0.6227937,
        size.width * 0.2004773,
        size.height * 0.6273323,
        size.width * 0.2062053,
        size.height * 0.6318709);
    path_9.cubicTo(
        size.width * 0.1980907,
        size.height * 0.6021180,
        size.width * 0.1894988,
        size.height * 0.5607665,
        size.width * 0.2109785,
        size.height * 0.5345436);
    path_9.cubicTo(
        size.width * 0.2224344,
        size.height * 0.5426122,
        size.width * 0.2248210,
        size.height * 0.5607665,
        size.width * 0.2362768,
        size.height * 0.5703480);
    path_9.cubicTo(
        size.width * 0.2391408,
        size.height * 0.5617751,
        size.width * 0.2415274,
        size.height * 0.5511851,
        size.width * 0.2496420,
        size.height * 0.5456379);
    path_9.cubicTo(
        size.width * 0.2854415,
        size.height * 0.5925366,
        size.width * 0.2816229,
        size.height * 0.5335350,
        size.width * 0.3007160,
        size.height * 0.5133636);
    path_9.cubicTo(
        size.width * 0.3145585,
        size.height * 0.4987393,
        size.width * 0.3107399,
        size.height * 0.5078164,
        size.width * 0.3264916,
        size.height * 0.5093293);
    path_9.cubicTo(
        size.width * 0.3408115,
        size.height * 0.5108422,
        size.width * 0.3360382,
        size.height * 0.5103379,
        size.width * 0.3489260,
        size.height * 0.5052950);
    path_9.lineTo(size.width * 0.3489260, size.height * 0.5052950);
    path_9.cubicTo(
        size.width * 0.3618138,
        size.height * 0.5002521,
        size.width * 0.3737470,
        size.height * 0.4977307,
        size.width * 0.3837709,
        size.height * 0.4881493);
    path_9.cubicTo(
        size.width * 0.3937947,
        size.height * 0.4785678,
        size.width * 0.3923628,
        size.height * 0.4639435,
        size.width * 0.4009547,
        size.height * 0.4533535);
    path_9.cubicTo(
        size.width * 0.4171838,
        size.height * 0.4326778,
        size.width * 0.4338902,
        size.height * 0.4351992,
        size.width * 0.4372315,
        size.height * 0.4019163);
    path_9.cubicTo(
        size.width * 0.4415274,
        size.height * 0.3585477,
        size.width * 0.4210024,
        size.height * 0.2919818,
        size.width * 0.3847255,
        size.height * 0.2672718);
    path_9.cubicTo(
        size.width * 0.3178998,
        size.height * 0.2218860,
        size.width * 0.2057279,
        size.height * 0.2632375,
        size.width * 0.1689737,
        size.height * 0.3308119);
    path_9.cubicTo(
        size.width * 0.1546539,
        size.height * 0.3575391,
        size.width * 0.1689737,
        size.height * 0.4392335,
        size.width * 0.1704057,
        size.height * 0.4679778);
    path_9.cubicTo(
        size.width * 0.1723150,
        size.height * 0.5148764,
        size.width * 0.1627685,
        size.height * 0.5779123,
        size.width * 0.1918854,
        size.height * 0.6172466);
    path_9.close();

    Paint paint9Fill = Paint()..style = PaintingStyle.fill;
    paint9Fill.color = const Color(0xffF0F4F6).withOpacity(1.0);
    canvas.drawPath(path_9, paint9Fill);

    Path path_10 = Path();
    path_10.moveTo(size.width * 0.4362768, size.height * 0.5592537);
    path_10.cubicTo(
        size.width * 0.4439141,
        size.height * 0.5789208,
        size.width * 0.4582339,
        size.height * 0.5945537,
        size.width * 0.4801909,
        size.height * 0.6061523);
    path_10.cubicTo(
        size.width * 0.4892601,
        size.height * 0.5597579,
        size.width * 0.4859189,
        size.height * 0.5219365,
        size.width * 0.5355609,
        size.height * 0.5052950);
    path_10.cubicTo(
        size.width * 0.5818616,
        size.height * 0.4896621,
        size.width * 0.5618138,
        size.height * 0.5274836,
        size.width * 0.5976134,
        size.height * 0.5446293);
    path_10.cubicTo(
        size.width * 0.6291169,
        size.height * 0.5355522,
        size.width * 0.6534606,
        size.height * 0.5269793,
        size.width * 0.6754177,
        size.height * 0.5466465);
    path_10.cubicTo(
        size.width * 0.6887828,
        size.height * 0.5587494,
        size.width * 0.6840095,
        size.height * 0.5970751,
        size.width * 0.7059666,
        size.height * 0.5985880);
    path_10.cubicTo(
        size.width * 0.7174224,
        size.height * 0.5995966,
        size.width * 0.7460621,
        size.height * 0.5723651,
        size.width * 0.7532220,
        size.height * 0.5627837);
    path_10.cubicTo(
        size.width * 0.7680191,
        size.height * 0.5431165,
        size.width * 0.7675418,
        size.height * 0.5189107,
        size.width * 0.7665871,
        size.height * 0.4952093);
    path_10.cubicTo(
        size.width * 0.7775656,
        size.height * 0.5350479,
        size.width * 0.8000000,
        size.height * 0.5360565,
        size.width * 0.8214797,
        size.height * 0.5658094);
    path_10.cubicTo(
        size.width * 0.8381862,
        size.height * 0.5885023,
        size.width * 0.8439141,
        size.height * 0.6253152,
        size.width * 0.8739857,
        size.height * 0.6318709);
    path_10.cubicTo(
        size.width * 0.8782816,
        size.height * 0.6071609,
        size.width * 0.8673031,
        size.height * 0.5632879,
        size.width * 0.8625298,
        size.height * 0.5385779);
    path_10.cubicTo(
        size.width * 0.8582339,
        size.height * 0.5153807,
        size.width * 0.8534606,
        size.height * 0.5027736,
        size.width * 0.8482100,
        size.height * 0.4795764);
    path_10.cubicTo(
        size.width * 0.8620525,
        size.height * 0.5118507,
        size.width * 0.8835322,
        size.height * 0.5199193,
        size.width * 0.9174224,
        size.height * 0.5168936);
    path_10.cubicTo(
        size.width * 0.9069212,
        size.height * 0.5179022,
        size.width * 0.8439141,
        size.height * 0.3862834,
        size.width * 0.8295943,
        size.height * 0.3721634);
    path_10.cubicTo(
        size.width * 0.7431981,
        size.height * 0.2879476,
        size.width * 0.6443914,
        size.height * 0.2627332,
        size.width * 0.5293556,
        size.height * 0.2748361);
    path_10.cubicTo(
        size.width * 0.4935561,
        size.height * 0.2783661,
        size.width * 0.4582339,
        size.height * 0.2723147,
        size.width * 0.4219570,
        size.height * 0.2738275);
    path_10.cubicTo(
        size.width * 0.3985680,
        size.height * 0.2748361,
        size.width * 0.3861575,
        size.height * 0.2682804,
        size.width * 0.3985680,
        size.height * 0.2924861);
    path_10.cubicTo(
        size.width * 0.4138425,
        size.height * 0.3232476,
        size.width * 0.4219570,
        size.height * 0.3287948,
        size.width * 0.4105012,
        size.height * 0.3625819);
    path_10.cubicTo(
        size.width * 0.4014320,
        size.height * 0.3893091,
        size.width * 0.3880668,
        size.height * 0.4195663,
        size.width * 0.3995227,
        size.height * 0.4478064);
    path_10.cubicTo(
        size.width * 0.4105012,
        size.height * 0.4755421,
        size.width * 0.4295943,
        size.height * 0.4851236,
        size.width * 0.4291169,
        size.height * 0.5153807);
    path_10.cubicTo(
        size.width * 0.4286396,
        size.height * 0.5315179,
        size.width * 0.4310263,
        size.height * 0.5461422,
        size.width * 0.4362768,
        size.height * 0.5592537);
    path_10.close();

    Paint paint10Fill = Paint()..style = PaintingStyle.fill;
    paint10Fill.color = const Color(0xffE0862F).withOpacity(1.0);
    canvas.drawPath(path_10, paint10Fill);

    Path path_11 = Path();
    path_11.moveTo(size.width * 0.5355609, size.height * 0.5138679);
    path_11.cubicTo(
        size.width * 0.5365155,
        size.height * 0.5158850,
        size.width * 0.5374702,
        size.height * 0.5184065,
        size.width * 0.5398568,
        size.height * 0.5209279);
    path_11.cubicTo(
        size.width * 0.5417661,
        size.height * 0.5229450,
        size.width * 0.5565632,
        size.height * 0.5239536,
        size.width * 0.5599045,
        size.height * 0.5259708);
    path_11.cubicTo(
        size.width * 0.5737470,
        size.height * 0.5335350,
        size.width * 0.5656325,
        size.height * 0.5431165,
        size.width * 0.5852029,
        size.height * 0.5456379);
    path_11.cubicTo(
        size.width * 0.6042959,
        size.height * 0.5481594,
        size.width * 0.6214797,
        size.height * 0.5274836,
        size.width * 0.6429594,
        size.height * 0.5325265);
    path_11.cubicTo(
        size.width * 0.6658711,
        size.height * 0.5375693,
        size.width * 0.6868735,
        size.height * 0.5557237,
        size.width * 0.6973747,
        size.height * 0.5779123);
    path_11.cubicTo(
        size.width * 0.7097852,
        size.height * 0.5562279,
        size.width * 0.7045346,
        size.height * 0.5214322,
        size.width * 0.7159905,
        size.height * 0.4997479);
    path_11.cubicTo(
        size.width * 0.7260143,
        size.height * 0.4805850,
        size.width * 0.7498807,
        size.height * 0.4740292,
        size.width * 0.7546539,
        size.height * 0.4513364);
    path_11.cubicTo(
        size.width * 0.7589499,
        size.height * 0.4316692,
        size.width * 0.7484487,
        size.height * 0.4150277,
        size.width * 0.7489260,
        size.height * 0.3963691);
    path_11.cubicTo(
        size.width * 0.7861575,
        size.height * 0.3943520,
        size.width * 0.7980907,
        size.height * 0.3968734,
        size.width * 0.8238663,
        size.height * 0.4220877);
    path_11.cubicTo(
        size.width * 0.8391408,
        size.height * 0.4372163,
        size.width * 0.8587112,
        size.height * 0.4639435,
        size.width * 0.8801909,
        size.height * 0.4649521);
    path_11.cubicTo(
        size.width * 0.8873508,
        size.height * 0.4654564,
        size.width * 0.8348449,
        size.height * 0.3767020,
        size.width * 0.8295943,
        size.height * 0.3716591);
    path_11.cubicTo(
        size.width * 0.7431981,
        size.height * 0.2874433,
        size.width * 0.6443914,
        size.height * 0.2622289,
        size.width * 0.5293556,
        size.height * 0.2743318);
    path_11.cubicTo(
        size.width * 0.5097852,
        size.height * 0.2763490,
        size.width * 0.4768496,
        size.height * 0.2783661,
        size.width * 0.4424821,
        size.height * 0.2728190);
    path_11.cubicTo(
        size.width * 0.4281623,
        size.height * 0.2965204,
        size.width * 0.4768496,
        size.height * 0.3282905,
        size.width * 0.4863962,
        size.height * 0.3439233);
    path_11.cubicTo(
        size.width * 0.5035800,
        size.height * 0.3711548,
        size.width * 0.5064439,
        size.height * 0.4104892,
        size.width * 0.5140811,
        size.height * 0.4417549);
    path_11.cubicTo(
        size.width * 0.5159905,
        size.height * 0.4493192,
        size.width * 0.5198091,
        size.height * 0.4619264,
        size.width * 0.5226730,
        size.height * 0.4689864);
    path_11.cubicTo(
        size.width * 0.5250597,
        size.height * 0.4745335,
        size.width * 0.5355609,
        size.height * 0.4795764,
        size.width * 0.5365155,
        size.height * 0.4846193);
    path_11.cubicTo(
        size.width * 0.5393795,
        size.height * 0.5017650,
        size.width * 0.5326969,
        size.height * 0.5057993,
        size.width * 0.5355609,
        size.height * 0.5138679);
    path_11.close();

    Paint paint11Fill = Paint()..style = PaintingStyle.fill;
    paint11Fill.color = const Color(0xffA2644B).withOpacity(1.0);
    canvas.drawPath(path_11, paint11Fill);

    Path path_12 = Path();
    path_12.moveTo(size.width * 0.8587112, size.height * 0.4412506);
    path_12.cubicTo(
        size.width * 0.8658711,
        size.height * 0.4689864,
        size.width * 0.8720764,
        size.height * 0.4735250,
        size.width * 0.8816229,
        size.height * 0.4841150);
    path_12.cubicTo(
        size.width * 0.8830549,
        size.height * 0.4856278,
        size.width * 0.9193317,
        size.height * 0.5168936,
        size.width * 0.9303103,
        size.height * 0.5254665);
    path_12.cubicTo(
        size.width * 0.9021480,
        size.height * 0.4891578,
        size.width * 0.8673031,
        size.height * 0.4266263,
        size.width * 0.8472554,
        size.height * 0.3968734);
    path_12.cubicTo(
        size.width * 0.8463007,
        size.height * 0.4120020,
        size.width * 0.8544153,
        size.height * 0.4256178,
        size.width * 0.8587112,
        size.height * 0.4412506);
    path_12.close();

    Paint paint12Fill = Paint()..style = PaintingStyle.fill;
    paint12Fill.color = const Color(0xff5B3F3E).withOpacity(1.0);
    canvas.drawPath(path_12, paint12Fill);

    Path path_13 = Path();
    path_13.moveTo(size.width * 0.5599045, size.height * 0.4286435);
    path_13.cubicTo(
        size.width * 0.5684964,
        size.height * 0.4467978,
        size.width * 0.5837709,
        size.height * 0.4629349,
        size.width * 0.5856802,
        size.height * 0.4836107);
    path_13.cubicTo(
        size.width * 0.5880668,
        size.height * 0.5073122,
        size.width * 0.5699284,
        size.height * 0.5254665,
        size.width * 0.5885442,
        size.height * 0.5471508);
    path_13.cubicTo(
        size.width * 0.6181384,
        size.height * 0.5340393,
        size.width * 0.6596659,
        size.height * 0.5239536,
        size.width * 0.6830549,
        size.height * 0.5557237);
    path_13.cubicTo(
        size.width * 0.6811456,
        size.height * 0.5436208,
        size.width * 0.6825776,
        size.height * 0.5047907,
        size.width * 0.6878282,
        size.height * 0.4942007);
    path_13.cubicTo(
        size.width * 0.6954654,
        size.height * 0.4780635,
        size.width * 0.7212411,
        size.height * 0.4735250,
        size.width * 0.7260143,
        size.height * 0.4543621);
    path_13.cubicTo(
        size.width * 0.7303103,
        size.height * 0.4362078,
        size.width * 0.7093079,
        size.height * 0.4190620,
        size.width * 0.7159905,
        size.height * 0.4004034);
    path_13.cubicTo(
        size.width * 0.7346062,
        size.height * 0.3464448,
        size.width * 0.7775656,
        size.height * 0.3635905,
        size.width * 0.8176611,
        size.height * 0.3605648);
    path_13.cubicTo(
        size.width * 0.8047733,
        size.height * 0.3454362,
        size.width * 0.7885442,
        size.height * 0.3252648,
        size.width * 0.7718377,
        size.height * 0.3151790);
    path_13.cubicTo(
        size.width * 0.7479714,
        size.height * 0.3010590,
        size.width * 0.7298329,
        size.height * 0.2899647,
        size.width * 0.7031026,
        size.height * 0.2818961);
    path_13.cubicTo(
        size.width * 0.6687351,
        size.height * 0.2713061,
        size.width * 0.6315036,
        size.height * 0.2697932,
        size.width * 0.5957041,
        size.height * 0.2702975);
    path_13.cubicTo(
        size.width * 0.5775656,
        size.height * 0.2708018,
        size.width * 0.5599045,
        size.height * 0.2718104,
        size.width * 0.5417661,
        size.height * 0.2738275);
    path_13.cubicTo(
        size.width * 0.5264916,
        size.height * 0.2753404,
        size.width * 0.5116945,
        size.height * 0.2733232,
        size.width * 0.4964200,
        size.height * 0.2753404);
    path_13.cubicTo(
        size.width * 0.4988067,
        size.height * 0.2798790,
        size.width * 0.5050119,
        size.height * 0.2829047,
        size.width * 0.5083532,
        size.height * 0.2869390);
    path_13.cubicTo(
        size.width * 0.5131265,
        size.height * 0.2914776,
        size.width * 0.5174224,
        size.height * 0.2970247,
        size.width * 0.5212411,
        size.height * 0.3020676);
    path_13.cubicTo(
        size.width * 0.5279236,
        size.height * 0.3106404,
        size.width * 0.5336516,
        size.height * 0.3197176,
        size.width * 0.5384248,
        size.height * 0.3298033);
    path_13.cubicTo(
        size.width * 0.5541766,
        size.height * 0.3605648,
        size.width * 0.5446301,
        size.height * 0.3913263,
        size.width * 0.5565632,
        size.height * 0.4225920);
    path_13.cubicTo(
        size.width * 0.5579952,
        size.height * 0.4246092,
        size.width * 0.5584726,
        size.height * 0.4266263,
        size.width * 0.5599045,
        size.height * 0.4286435);
    path_13.close();

    Paint paint13Fill = Paint()..style = PaintingStyle.fill;
    paint13Fill.color = const Color(0xff5B3F3E).withOpacity(1.0);
    canvas.drawPath(path_13, paint13Fill);

    Path path_14 = Path();
    path_14.moveTo(size.width * 0.2276850, size.height * 0.6616238);
    path_14.cubicTo(
        size.width * 0.2434368,
        size.height * 0.6843167,
        size.width * 0.2453461,
        size.height * 0.6858296,
        size.width * 0.2553699,
        size.height * 0.7115482);
    path_14.cubicTo(
        size.width * 0.2668258,
        size.height * 0.7397882,
        size.width * 0.2768496,
        size.height * 0.7685325,
        size.width * 0.2768496,
        size.height * 0.7997983);
    path_14.cubicTo(
        size.width * 0.2768496,
        size.height * 0.8335855,
        size.width * 0.2749403,
        size.height * 0.8623298,
        size.width * 0.2639618,
        size.height * 0.8930913);
    path_14.cubicTo(
        size.width * 0.2467780,
        size.height * 0.9112456,
        size.width * 0.2295943,
        size.height * 0.9319213,
        size.width * 0.2272076,
        size.height * 0.9546142);
    path_14.cubicTo(
        size.width * 0.2353222,
        size.height * 0.9737771,
        size.width * 0.2887828,
        size.height * 0.9611699,
        size.width * 0.3045346,
        size.height * 0.9591528);
    path_14.cubicTo(
        size.width * 0.3202864,
        size.height * 0.9571357,
        size.width * 0.3198091,
        size.height * 0.9334342,
        size.width * 0.3236277,
        size.height * 0.9248613);
    path_14.cubicTo(
        size.width * 0.3303103,
        size.height * 0.9117499,
        size.width * 0.3374702,
        size.height * 0.9117499,
        size.width * 0.3365155,
        size.height * 0.8976299);
    path_14.cubicTo(
        size.width * 0.3341289,
        size.height * 0.8633384,
        size.width * 0.3303103,
        size.height * 0.8593041,
        size.width * 0.3341289,
        size.height * 0.8477055);
    path_14.cubicTo(
        size.width * 0.3431981,
        size.height * 0.8224912,
        size.width * 0.3446301,
        size.height * 0.8270298,
        size.width * 0.3403341,
        size.height * 0.8023197);
    path_14.cubicTo(
        size.width * 0.3322196,
        size.height * 0.7549168,
        size.width * 0.3298329,
        size.height * 0.7342410,
        size.width * 0.3231504,
        size.height * 0.6822995);
    path_14.cubicTo(
        size.width * 0.3813842,
        size.height * 0.6752395,
        size.width * 0.4415274,
        size.height * 0.6913767,
        size.width * 0.4735084,
        size.height * 0.6414523);
    path_14.cubicTo(
        size.width * 0.5508353,
        size.height * 0.6162380,
        size.width * 0.5541766,
        size.height * 0.5456379,
        size.width * 0.6066826,
        size.height * 0.5395865);
    path_14.cubicTo(
        size.width * 0.6319809,
        size.height * 0.5365608,
        size.width * 0.6591885,
        size.height * 0.5390822,
        size.width * 0.6701671,
        size.height * 0.5456379);
    path_14.cubicTo(
        size.width * 0.6883055,
        size.height * 0.5562279,
        size.width * 0.6897375,
        size.height * 0.5819465,
        size.width * 0.7073986,
        size.height * 0.6152295);
    path_14.cubicTo(
        size.width * 0.7274463,
        size.height * 0.6525466,
        size.width * 0.7350835,
        size.height * 0.6580938,
        size.width * 0.7675418,
        size.height * 0.6787695);
    path_14.cubicTo(
        size.width * 0.8286396,
        size.height * 0.7170953,
        size.width * 0.8405728,
        size.height * 0.7438225,
        size.width * 0.8534606,
        size.height * 0.8139183);
    path_14.cubicTo(
        size.width * 0.8568019,
        size.height * 0.8320726,
        size.width * 0.8649165,
        size.height * 0.8724155,
        size.width * 0.8534606,
        size.height * 0.8865356);
    path_14.cubicTo(
        size.width * 0.8319809,
        size.height * 0.8885527,
        size.width * 0.8062053,
        size.height * 0.9067070,
        size.width * 0.8105012,
        size.height * 0.9384771);
    path_14.cubicTo(
        size.width * 0.8276850,
        size.height * 0.9520928,
        size.width * 0.8768496,
        size.height * 0.9430156,
        size.width * 0.8983294,
        size.height * 0.9359556);
    path_14.cubicTo(
        size.width * 0.9207637,
        size.height * 0.9288956,
        size.width * 0.9131265,
        size.height * 0.9021684,
        size.width * 0.9136038,
        size.height * 0.8678770);
    path_14.cubicTo(
        size.width * 0.9140811,
        size.height * 0.8376198,
        size.width * 0.9116945,
        size.height * 0.7997983,
        size.width * 0.9178998,
        size.height * 0.7700454);
    path_14.cubicTo(
        size.width * 0.9221957,
        size.height * 0.7498739,
        size.width * 0.9221957,
        size.height * 0.7201210,
        size.width * 0.9102625,
        size.height * 0.7090267);
    path_14.cubicTo(
        size.width * 0.8945107,
        size.height * 0.6938981,
        size.width * 0.8883055,
        size.height * 0.6838124,
        size.width * 0.8811456,
        size.height * 0.6611195);
    path_14.cubicTo(
        size.width * 0.8715990,
        size.height * 0.6313666,
        size.width * 0.8692124,
        size.height * 0.5859808,
        size.width * 0.8649165,
        size.height * 0.5542108);
    path_14.cubicTo(
        size.width * 0.8639618,
        size.height * 0.5461422,
        size.width * 0.8558473,
        size.height * 0.4911750,
        size.width * 0.8505967,
        size.height * 0.4901664);
    path_14.cubicTo(
        size.width * 0.8816229,
        size.height * 0.5441251,
        size.width * 0.8844869,
        size.height * 0.5658094,
        size.width * 0.9093079,
        size.height * 0.6001009);
    path_14.cubicTo(
        size.width * 0.9236277,
        size.height * 0.6197680,
        size.width * 0.9546539,
        size.height * 0.6298538,
        size.width * 0.9933174,
        size.height * 0.7090267);
    path_14.cubicTo(
        size.width * 1.001909,
        size.height * 0.6838124,
        size.width * 0.9933174,
        size.height * 0.6253152,
        size.width * 0.9761337,
        size.height * 0.5930408);
    path_14.cubicTo(
        size.width * 0.9627685,
        size.height * 0.5678265,
        size.width * 0.9393795,
        size.height * 0.5400908,
        size.width * 0.9226730,
        size.height * 0.5173979);
    path_14.cubicTo(
        size.width * 0.8883055,
        size.height * 0.4710035,
        size.width * 0.8625298,
        size.height * 0.4185577,
        size.width * 0.8286396,
        size.height * 0.3721634);
    path_14.cubicTo(
        size.width * 0.7536993,
        size.height * 0.2692890,
        size.width * 0.6434368,
        size.height * 0.2627332,
        size.width * 0.5284010,
        size.height * 0.2748361);
    path_14.cubicTo(
        size.width * 0.4582339,
        size.height * 0.2818961,
        size.width * 0.3799523,
        size.height * 0.2581947,
        size.width * 0.3078759,
        size.height * 0.2536561);
    path_14.cubicTo(
        size.width * 0.2520286,
        size.height * 0.2501261,
        size.width * 0.1957041,
        size.height * 0.2783661,
        size.width * 0.1670644,
        size.height * 0.3313162);
    path_14.cubicTo(
        size.width * 0.1527446,
        size.height * 0.3580434,
        size.width * 0.1670644,
        size.height * 0.4397378,
        size.width * 0.1684964,
        size.height * 0.4684821);
    path_14.cubicTo(
        size.width * 0.1704057,
        size.height * 0.5088250,
        size.width * 0.1613365,
        size.height * 0.5456379,
        size.width * 0.1751790,
        size.height * 0.5864851);
    path_14.cubicTo(
        size.width * 0.1856802,
        size.height * 0.6152295,
        size.width * 0.2105012,
        size.height * 0.6369138,
        size.width * 0.2276850,
        size.height * 0.6616238);
    path_14.close();

    Paint paint14Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.006765155;
    paint14Stroke.color = const Color(0xff000000).withOpacity(1.0);
    paint14Stroke.strokeCap = StrokeCap.round;
    paint14Stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_14, paint14Stroke);

    Path path_15 = Path();
    path_15.moveTo(size.width * 0.3761337, size.height * 0.2279375);
    path_15.cubicTo(
        size.width * 0.3670644,
        size.height * 0.2057489,
        size.width * 0.3565632,
        size.height * 0.1331316,
        size.width * 0.3918854,
        size.height * 0.1280888);
    path_15.cubicTo(
        size.width * 0.4305489,
        size.height * 0.1230459,
        size.width * 0.4310263,
        size.height * 0.1936460,
        size.width * 0.4319809,
        size.height * 0.2188603);
    path_15.cubicTo(
        size.width * 0.4329356,
        size.height * 0.2450832,
        size.width * 0.4319809,
        size.height * 0.2718104,
        size.width * 0.4310263,
        size.height * 0.2980333);
    path_15.cubicTo(
        size.width * 0.4295943,
        size.height * 0.3328290,
        size.width * 0.4238663,
        size.height * 0.3701462,
        size.width * 0.4281623,
        size.height * 0.4039334);
    path_15.cubicTo(
        size.width * 0.4224344,
        size.height * 0.3393848,
        size.width * 0.3885442,
        size.height * 0.2576904,
        size.width * 0.3761337,
        size.height * 0.2279375);
    path_15.close();

    Paint paint15Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.006765155;
    paint15Stroke.color = const Color(0xff000000).withOpacity(1.0);
    paint15Stroke.strokeCap = StrokeCap.round;
    paint15Stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_15, paint15Stroke);

    Paint paint15Fill = Paint()..style = PaintingStyle.fill;
    paint15Fill.color = const Color(0xff5C4037).withOpacity(1.0);
    canvas.drawPath(path_15, paint15Fill);

    Path path_16 = Path();
    path_16.moveTo(size.width * 0.1532220, size.height * 0.2445789);
    path_16.cubicTo(
        size.width * 0.1622912,
        size.height * 0.2223903,
        size.width * 0.1727924,
        size.height * 0.1492688,
        size.width * 0.1374702,
        size.height * 0.1447302);
    path_16.cubicTo(
        size.width * 0.09880668,
        size.height * 0.1396873,
        size.width * 0.09832936,
        size.height * 0.2102874,
        size.width * 0.09737470,
        size.height * 0.2355018);
    path_16.cubicTo(
        size.width * 0.09642005,
        size.height * 0.2617247,
        size.width * 0.09737470,
        size.height * 0.2884518,
        size.width * 0.09832936,
        size.height * 0.3146747);
    path_16.cubicTo(
        size.width * 0.09976134,
        size.height * 0.3494705,
        size.width * 0.08496420,
        size.height * 0.3111447,
        size.width * 0.08066826,
        size.height * 0.3449319);
    path_16.cubicTo(
        size.width * 0.1193317,
        size.height * 0.3434191,
        size.width * 0.1408115,
        size.height * 0.2743318,
        size.width * 0.1532220,
        size.height * 0.2445789);
    path_16.close();

    Paint paint16Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.006765155;
    paint16Stroke.color = const Color(0xff000000).withOpacity(1.0);
    paint16Stroke.strokeCap = StrokeCap.round;
    paint16Stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_16, paint16Stroke);

    Paint paint16Fill = Paint()..style = PaintingStyle.fill;
    paint16Fill.color = const Color(0xff5C4037).withOpacity(1.0);
    canvas.drawPath(path_16, paint16Fill);

    Path path_17 = Path();
    path_17.moveTo(size.width * 0.1785203, size.height * 0.3741805);
    path_17.cubicTo(
        size.width * 0.1498807,
        size.height * 0.3383762,
        size.width * 0.1431981,
        size.height * 0.2919818,
        size.width * 0.1365155,
        size.height * 0.2460918);
    path_17.cubicTo(
        size.width * 0.1284010,
        size.height * 0.1896117,
        size.width * 0.1178998,
        size.height * 0.1250630,
        size.width * 0.1436754,
        size.height * 0.07513868);
    path_17.cubicTo(
        size.width * 0.1584726,
        size.height * 0.04689864,
        size.width * 0.1980907,
        size.height * 0.01159859,
        size.width * 0.2443914,
        size.height * 0.005042864);
    path_17.cubicTo(
        size.width * 0.3069212,
        size.height * -0.004034291,
        size.width * 0.3794749,
        size.height * 0.02622289,
        size.width * 0.3957041,
        size.height * 0.06807867);
    path_17.cubicTo(
        size.width * 0.4267303,
        size.height * 0.1477559,
        size.width * 0.4019093,
        size.height * 0.2309632,
        size.width * 0.3861575,
        size.height * 0.3010590);
    path_17.cubicTo(
        size.width * 0.3684964,
        size.height * 0.3792234,
        size.width * 0.2754177,
        size.height * 0.4896621,
        size.width * 0.2033413,
        size.height * 0.4175492);
    path_17.cubicTo(
        size.width * 0.2000000,
        size.height * 0.4145234,
        size.width * 0.1813842,
        size.height * 0.3777105,
        size.width * 0.1785203,
        size.height * 0.3741805);
    path_17.close();

    Paint paint17Fill = Paint()..style = PaintingStyle.fill;
    paint17Fill.color = const Color(0xffE0862F).withOpacity(1.0);
    canvas.drawPath(path_17, paint17Fill);

    Path path_18 = Path();
    path_18.moveTo(size.width * 0.1785203, size.height * 0.3741805);
    path_18.cubicTo(
        size.width * 0.1613365,
        size.height * 0.3524962,
        size.width * 0.1589499,
        size.height * 0.3116490,
        size.width * 0.1708831,
        size.height * 0.2864347);
    path_18.cubicTo(
        size.width * 0.1804296,
        size.height * 0.2662632,
        size.width * 0.2033413,
        size.height * 0.2491175,
        size.width * 0.2171838,
        size.height * 0.2304589);
    path_18.cubicTo(
        size.width * 0.2262530,
        size.height * 0.2183560,
        size.width * 0.2467780,
        size.height * 0.1845688,
        size.width * 0.2496420,
        size.height * 0.1694402);
    path_18.cubicTo(
        size.width * 0.2548926,
        size.height * 0.1427131,
        size.width * 0.2491647,
        size.height * 0.08825013,
        size.width * 0.2510740,
        size.height * 0.06354009);
    path_18.cubicTo(
        size.width * 0.2525060,
        size.height * 0.04336863,
        size.width * 0.2472554,
        size.height * 0.01815431,
        size.width * 0.2687351,
        size.height * 0.02168432);
    path_18.cubicTo(
        size.width * 0.2902148,
        size.height * 0.02471004,
        size.width * 0.2816229,
        size.height * 0.04538578,
        size.width * 0.2782816,
        size.height * 0.06858296);
    path_18.cubicTo(
        size.width * 0.2739857,
        size.height * 0.09884014,
        size.width * 0.2682578,
        size.height * 0.1346445,
        size.width * 0.2720764,
        size.height * 0.1694402);
    path_18.cubicTo(
        size.width * 0.2735084,
        size.height * 0.1845688,
        size.width * 0.2792363,
        size.height * 0.1956631,
        size.width * 0.2878282,
        size.height * 0.2097832);
    path_18.cubicTo(
        size.width * 0.2973747,
        size.height * 0.2249117,
        size.width * 0.3088305,
        size.height * 0.2370146,
        size.width * 0.3226730,
        size.height * 0.2602118);
    path_18.cubicTo(
        size.width * 0.3341289,
        size.height * 0.2793747,
        size.width * 0.3479714,
        size.height * 0.2955119,
        size.width * 0.3508353,
        size.height * 0.3182047);
    path_18.cubicTo(
        size.width * 0.3532220,
        size.height * 0.3373676,
        size.width * 0.3551313,
        size.height * 0.3701462,
        size.width * 0.3455847,
        size.height * 0.3867877);
    path_18.cubicTo(
        size.width * 0.3379475,
        size.height * 0.4004034,
        size.width * 0.3193317,
        size.height * 0.4140192,
        size.width * 0.3069212,
        size.height * 0.4230963);
    path_18.cubicTo(
        size.width * 0.2744630,
        size.height * 0.4457892,
        size.width * 0.2334129,
        size.height * 0.4478064,
        size.width * 0.2042959,
        size.height * 0.4180535);
    path_18.cubicTo(
        size.width * 0.2000000,
        size.height * 0.4145234,
        size.width * 0.1813842,
        size.height * 0.3777105,
        size.width * 0.1785203,
        size.height * 0.3741805);
    path_18.close();

    Paint paint18Fill = Paint()..style = PaintingStyle.fill;
    paint18Fill.color = const Color(0xffFFFFFF).withOpacity(1.0);
    canvas.drawPath(path_18, paint18Fill);

    Path path_19 = Path();
    path_19.moveTo(size.width * 0.2062053, size.height * 0.3862834);
    path_19.cubicTo(
        size.width * 0.2128878,
        size.height * 0.3706505,
        size.width * 0.2353222,
        size.height * 0.3635905,
        size.width * 0.2510740,
        size.height * 0.3600605);
    path_19.cubicTo(
        size.width * 0.2692124,
        size.height * 0.3565305,
        size.width * 0.2978520,
        size.height * 0.3504791,
        size.width * 0.3097852,
        size.height * 0.3706505);
    path_19.cubicTo(
        size.width * 0.3331742,
        size.height * 0.4094806,
        size.width * 0.3007160,
        size.height * 0.4311649,
        size.width * 0.2692124,
        size.height * 0.4367121);
    path_19.cubicTo(
        size.width * 0.2410501,
        size.height * 0.4412506,
        size.width * 0.2066826,
        size.height * 0.4336863,
        size.width * 0.2047733,
        size.height * 0.3978820);
    path_19.cubicTo(
        size.width * 0.2042959,
        size.height * 0.3938477,
        size.width * 0.2047733,
        size.height * 0.3898134,
        size.width * 0.2062053,
        size.height * 0.3862834);
    path_19.close();

    Paint paint19Fill = Paint()..style = PaintingStyle.fill;
    paint19Fill.color = const Color(0xffC99CB3).withOpacity(1.0);
    canvas.drawPath(path_19, paint19Fill);

    Path path_20 = Path();
    path_20.moveTo(size.width * 0.1785203, size.height * 0.3741805);
    path_20.cubicTo(
        size.width * 0.1498807,
        size.height * 0.3383762,
        size.width * 0.1431981,
        size.height * 0.2919818,
        size.width * 0.1365155,
        size.height * 0.2460918);
    path_20.cubicTo(
        size.width * 0.1284010,
        size.height * 0.1896117,
        size.width * 0.1178998,
        size.height * 0.1250630,
        size.width * 0.1436754,
        size.height * 0.07513868);
    path_20.cubicTo(
        size.width * 0.1584726,
        size.height * 0.04689864,
        size.width * 0.1980907,
        size.height * 0.01159859,
        size.width * 0.2443914,
        size.height * 0.005042864);
    path_20.cubicTo(
        size.width * 0.3069212,
        size.height * -0.004034291,
        size.width * 0.3794749,
        size.height * 0.02622289,
        size.width * 0.3957041,
        size.height * 0.06807867);
    path_20.cubicTo(
        size.width * 0.4267303,
        size.height * 0.1477559,
        size.width * 0.4019093,
        size.height * 0.2309632,
        size.width * 0.3861575,
        size.height * 0.3010590);
    path_20.cubicTo(
        size.width * 0.3684964,
        size.height * 0.3792234,
        size.width * 0.2754177,
        size.height * 0.4896621,
        size.width * 0.2033413,
        size.height * 0.4175492);
    path_20.cubicTo(
        size.width * 0.2000000,
        size.height * 0.4145234,
        size.width * 0.1813842,
        size.height * 0.3777105,
        size.width * 0.1785203,
        size.height * 0.3741805);
    path_20.close();

    Paint paint20Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.006765155;
    paint20Stroke.color = const Color(0xff000000).withOpacity(1.0);
    paint20Stroke.strokeCap = StrokeCap.round;
    paint20Stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_20, paint20Stroke);

    Path path_21 = Path();
    path_21.moveTo(size.width * 0.2076372, size.height * 0.4165406);
    path_21.cubicTo(
        size.width * 0.2439141,
        size.height * 0.4155320,
        size.width * 0.2735084,
        size.height * 0.4165406,
        size.width * 0.2992840,
        size.height * 0.4120020);
    path_21.cubicTo(
        size.width * 0.3226730,
        size.height * 0.4079677,
        size.width * 0.3279236,
        size.height * 0.4175492,
        size.width * 0.3231504,
        size.height * 0.4276349);
    path_21.cubicTo(
        size.width * 0.3140811,
        size.height * 0.4478064,
        size.width * 0.2162291,
        size.height * 0.4674735,
        size.width * 0.1909308,
        size.height * 0.4210792);
    path_21.cubicTo(
        size.width * 0.1823389,
        size.height * 0.3767020,
        size.width * 0.1789976,
        size.height * 0.4170449,
        size.width * 0.2076372,
        size.height * 0.4165406);
    path_21.close();

    Paint paint21Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.006765155;
    paint21Stroke.color = const Color(0xff000000).withOpacity(1.0);
    paint21Stroke.strokeCap = StrokeCap.round;
    paint21Stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_21, paint21Stroke);

    Paint paint21Fill = Paint()..style = PaintingStyle.fill;
    paint21Fill.color = const Color(0xffE5E5E5).withOpacity(1.0);
    canvas.drawPath(path_21, paint21Fill);

    Path path_22 = Path();
    path_22.moveTo(size.width * 0.2510740, size.height * 0.3277862);
    path_22.cubicTo(
        size.width * 0.2496420,
        size.height * 0.3469491,
        size.width * 0.2544153,
        size.height * 0.3645991,
        size.width * 0.2544153,
        size.height * 0.3842663);
    path_22.cubicTo(
        size.width * 0.2892601,
        size.height * 0.4009077,
        size.width * 0.2940334,
        size.height * 0.4473021,
        size.width * 0.3174224,
        size.height * 0.4543621);
    path_22.cubicTo(
        size.width * 0.3393795,
        size.height * 0.4609178,
        size.width * 0.3656325,
        size.height * 0.4462935,
        size.width * 0.3680191,
        size.height * 0.4210792);
    path_22.cubicTo(
        size.width * 0.3713604,
        size.height * 0.3877963,
        size.width * 0.3651551,
        size.height * 0.3388805,
        size.width * 0.3489260,
        size.height * 0.2980333);

    Paint paint22Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.006765155;
    paint22Stroke.color = const Color(0xff000000).withOpacity(1.0);
    paint22Stroke.strokeCap = StrokeCap.round;
    paint22Stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_22, paint22Stroke);

    Paint paint22Fill = Paint()..style = PaintingStyle.fill;
    paint22Fill.color = const Color(0xffFFFFFF).withOpacity(1.0);
    canvas.drawPath(path_22, paint22Fill);

    Path path_23 = Path();
    path_23.moveTo(size.width * 0.1656325, size.height * 0.2914776);
    path_23.cubicTo(
        size.width * 0.1498807,
        size.height * 0.3449319,
        size.width * 0.1460621,
        size.height * 0.4508321,
        size.width * 0.1937947,
        size.height * 0.4543621);
    path_23.cubicTo(
        size.width * 0.2348449,
        size.height * 0.4578921,
        size.width * 0.2286396,
        size.height * 0.3943520,
        size.width * 0.2534606,
        size.height * 0.3877963);
    path_23.cubicTo(
        size.width * 0.2568019,
        size.height * 0.3580434,
        size.width * 0.2501193,
        size.height * 0.3323248,
        size.width * 0.2501193,
        size.height * 0.3146747);

    Paint paint23Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.006765155;
    paint23Stroke.color = const Color(0xff000000).withOpacity(1.0);
    paint23Stroke.strokeCap = StrokeCap.round;
    paint23Stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_23, paint23Stroke);

    Paint paint23Fill = Paint()..style = PaintingStyle.fill;
    paint23Fill.color = const Color(0xffFFFFFF).withOpacity(1.0);
    canvas.drawPath(path_23, paint23Fill);

    Path path_24 = Path();
    path_24.moveTo(size.width * 0.2601432, size.height * 0.3343419);
    path_24.cubicTo(
        size.width * 0.2219570,
        size.height * 0.3444276,
        size.width * 0.2095465,
        size.height * 0.2945033,
        size.width * 0.2420048,
        size.height * 0.2818961);
    path_24.cubicTo(
        size.width * 0.2816229,
        size.height * 0.2662632,
        size.width * 0.3145585,
        size.height * 0.3202219,
        size.width * 0.2601432,
        size.height * 0.3343419);
    path_24.close();

    Paint paint24Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.006765155;
    paint24Stroke.color = const Color(0xff000000).withOpacity(1.0);
    paint24Stroke.strokeCap = StrokeCap.round;
    paint24Stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_24, paint24Stroke);

    Paint paint24Fill = Paint()..style = PaintingStyle.fill;
    paint24Fill.color = const Color(0xff3A3A3A).withOpacity(1.0);
    canvas.drawPath(path_24, paint24Fill);

    Path path_25 = Path();
    path_25.moveTo(size.width * 0.2076372, size.height * 0.1860817);
    path_25.cubicTo(
        size.width * 0.2276850,
        size.height * 0.1896117,
        size.width * 0.2157518,
        size.height * 0.2188603,
        size.width * 0.2033413,
        size.height * 0.2153303);
    path_25.cubicTo(
        size.width * 0.1937947,
        size.height * 0.2128089,
        size.width * 0.1856802,
        size.height * 0.1825517,
        size.width * 0.2076372,
        size.height * 0.1860817);
    path_25.close();

    Paint paint25Fill = Paint()..style = PaintingStyle.fill;
    paint25Fill.color = const Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_25, paint25Fill);

    Path path_26 = Path();
    path_26.moveTo(size.width * 0.3269690, size.height * 0.1810388);
    path_26.cubicTo(
        size.width * 0.3470167,
        size.height * 0.1820474,
        size.width * 0.3451074,
        size.height * 0.2173475,
        size.width * 0.3231504,
        size.height * 0.2082703);
    path_26.cubicTo(
        size.width * 0.3140811,
        size.height * 0.2042360,
        size.width * 0.3150358,
        size.height * 0.1805345,
        size.width * 0.3269690,
        size.height * 0.1810388);
    path_26.close();

    Paint paint26Fill = Paint()..style = PaintingStyle.fill;
    paint26Fill.color = const Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_26, paint26Fill);

    Path path_27 = Path();
    path_27.moveTo(size.width * 0.1288783, size.height * 0.3136662);
    path_27.cubicTo(
        size.width * 0.1346062,
        size.height * 0.3877963,
        size.width * 0.1484487,
        size.height * 0.4755421,
        size.width * 0.08591885,
        size.height * 0.4997479);
    path_27.cubicTo(
        size.width * 0.05966587,
        size.height * 0.5098336,
        size.width * 0.02386635,
        size.height * 0.5037821,
        size.width * 0.008591885,
        size.height * 0.4755421);
    path_27.cubicTo(
        size.width * -0.008591885,
        size.height * 0.4437721,
        size.width * 0.01813842,
        size.height * 0.4170449,
        size.width * 0.03723150,
        size.height * 0.3968734);
    path_27.cubicTo(
        size.width * 0.06491647,
        size.height * 0.3676248,
        size.width * 0.07589499,
        size.height * 0.3061019,
        size.width * 0.08878282,
        size.height * 0.2304589);
    path_27.cubicTo(
        size.width * 0.09451074,
        size.height * 0.1961674,
        size.width * 0.07780430,
        size.height * 0.1603631,
        size.width * 0.09546539,
        size.height * 0.1265759);
    path_27.cubicTo(
        size.width * 0.1016706,
        size.height * 0.1144730,
        size.width * 0.1207637,
        size.height * 0.09833585,
        size.width * 0.1355609,
        size.height * 0.1028744);
    path_27.cubicTo(
        size.width * 0.1274463,
        size.height * 0.1275845,
        size.width * 0.1303103,
        size.height * 0.1336359,
        size.width * 0.1398568,
        size.height * 0.1447302);
    path_27.cubicTo(
        size.width * 0.1317422,
        size.height * 0.1618759,
        size.width * 0.1250597,
        size.height * 0.1749874,
        size.width * 0.1226730,
        size.height * 0.1941503);
    path_27.cubicTo(
        size.width * 0.1183771,
        size.height * 0.2339889,
        size.width * 0.1260143,
        size.height * 0.2738275,
        size.width * 0.1288783,
        size.height * 0.3136662);
    path_27.close();

    Paint paint27Fill = Paint()..style = PaintingStyle.fill;
    paint27Fill.color = const Color(0xff865D50).withOpacity(1.0);
    canvas.drawPath(path_27, paint27Fill);

    Path path_28 = Path();
    path_28.moveTo(size.width * 0.1288783, size.height * 0.3136662);
    path_28.cubicTo(
        size.width * 0.1303103,
        size.height * 0.3313162,
        size.width * 0.1346062,
        size.height * 0.3696420,
        size.width * 0.1317422,
        size.height * 0.3877963);
    path_28.cubicTo(
        size.width * 0.1274463,
        size.height * 0.3681291,
        size.width * 0.1073986,
        size.height * 0.3484619,
        size.width * 0.1045346,
        size.height * 0.3166919);
    path_28.cubicTo(
        size.width * 0.1016706,
        size.height * 0.2834090,
        size.width * 0.09069212,
        size.height * 0.2521432,
        size.width * 0.09021480,
        size.height * 0.2188603);
    path_28.cubicTo(
        size.width * 0.08973747,
        size.height * 0.1886031,
        size.width * 0.08114558,
        size.height * 0.1548159,
        size.width * 0.09594272,
        size.height * 0.1265759);
    path_28.cubicTo(
        size.width * 0.1021480,
        size.height * 0.1144730,
        size.width * 0.1212411,
        size.height * 0.09833585,
        size.width * 0.1360382,
        size.height * 0.1028744);
    path_28.cubicTo(
        size.width * 0.1365155,
        size.height * 0.1336359,
        size.width * 0.1393795,
        size.height * 0.1306102,
        size.width * 0.1403341,
        size.height * 0.1447302);
    path_28.cubicTo(
        size.width * 0.1322196,
        size.height * 0.1618759,
        size.width * 0.1255370,
        size.height * 0.1749874,
        size.width * 0.1231504,
        size.height * 0.1941503);
    path_28.cubicTo(
        size.width * 0.1183771,
        size.height * 0.2339889,
        size.width * 0.1260143,
        size.height * 0.2738275,
        size.width * 0.1288783,
        size.height * 0.3136662);
    path_28.close();

    Paint paint28Fill = Paint()..style = PaintingStyle.fill;
    paint28Fill.color = const Color(0xffA2644B).withOpacity(1.0);
    canvas.drawPath(path_28, paint28Fill);

    Path path_29 = Path();
    path_29.moveTo(size.width * 0.1408115, size.height * 0.1447302);
    path_29.cubicTo(
        size.width * 0.1102625,
        size.height * 0.1805345,
        size.width * 0.1255370,
        size.height * 0.2657590,
        size.width * 0.1293556,
        size.height * 0.3136662);
    path_29.cubicTo(
        size.width * 0.1350835,
        size.height * 0.3877963,
        size.width * 0.1489260,
        size.height * 0.4755421,
        size.width * 0.08639618,
        size.height * 0.4997479);
    path_29.cubicTo(
        size.width * 0.06014320,
        size.height * 0.5098336,
        size.width * 0.02434368,
        size.height * 0.5037821,
        size.width * 0.009069212,
        size.height * 0.4755421);
    path_29.cubicTo(
        size.width * -0.008114558,
        size.height * 0.4437721,
        size.width * 0.01861575,
        size.height * 0.4170449,
        size.width * 0.03770883,
        size.height * 0.3968734);
    path_29.cubicTo(
        size.width * 0.06539379,
        size.height * 0.3676248,
        size.width * 0.07637232,
        size.height * 0.3061019,
        size.width * 0.08926014,
        size.height * 0.2304589);
    path_29.cubicTo(
        size.width * 0.08687351,
        size.height * 0.1926374,
        size.width * 0.07541766,
        size.height * 0.09984871,
        size.width * 0.1346062,
        size.height * 0.1048916);

    Paint paint29Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.006765155;
    paint29Stroke.color = const Color(0xff000000).withOpacity(1.0);
    paint29Stroke.strokeCap = StrokeCap.round;
    paint29Stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_29, paint29Stroke);

    Path path_30 = Path();
    path_30.moveTo(size.width * 0.08735084, size.height * 0.2213817);
    path_30.cubicTo(
        size.width * 0.09164678,
        size.height * 0.2637418,
        size.width * 0.09737470,
        size.height * 0.3151790,
        size.width * 0.1131265,
        size.height * 0.3590519);

    Paint paint30Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.006765155;
    paint30Stroke.color = const Color(0xff000000).withOpacity(1.0);
    paint30Stroke.strokeCap = StrokeCap.round;
    paint30Stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_30, paint30Stroke);

    Path path_31 = Path();
    path_31.moveTo(size.width * 0.4429594, size.height * 0.2471004);
    path_31.cubicTo(
        size.width * 0.4362768,
        size.height * 0.2138174,
        size.width * 0.4424821,
        size.height * 0.1780131,
        size.width * 0.4377088,
        size.height * 0.1437216);
    path_31.cubicTo(
        size.width * 0.4353222,
        size.height * 0.1280888,
        size.width * 0.4319809,
        size.height * 0.1084216,
        size.width * 0.4205251,
        size.height * 0.09682300);
    path_31.cubicTo(
        size.width * 0.4085919,
        size.height * 0.08472012,
        size.width * 0.4000000,
        size.height * 0.08875441,
        size.width * 0.3942721,
        size.height * 0.1089259);
    path_31.cubicTo(
        size.width * 0.3894988,
        size.height * 0.1255673,
        size.width * 0.3909308,
        size.height * 0.1285930,
        size.width * 0.3980907,
        size.height * 0.1406959);
    path_31.cubicTo(
        size.width * 0.4062053,
        size.height * 0.1548159,
        size.width * 0.4095465,
        size.height * 0.1719617,
        size.width * 0.4124105,
        size.height * 0.1875946);
    path_31.cubicTo(
        size.width * 0.4181384,
        size.height * 0.2218860,
        size.width * 0.4171838,
        size.height * 0.2561775,
        size.width * 0.4200477,
        size.height * 0.2904690);
    path_31.cubicTo(
        size.width * 0.4248210,
        size.height * 0.3474534,
        size.width * 0.4023866,
        size.height * 0.4548664,
        size.width * 0.4644391,
        size.height * 0.4790721);
    path_31.cubicTo(
        size.width * 0.4906921,
        size.height * 0.4891578,
        size.width * 0.5293556,
        size.height * 0.4694907,
        size.width * 0.5446301,
        size.height * 0.4412506);
    path_31.cubicTo(
        size.width * 0.5618138,
        size.height * 0.4094806,
        size.width * 0.5374702,
        size.height * 0.3797277,
        size.width * 0.5178998,
        size.height * 0.3595562);
    path_31.cubicTo(
        size.width * 0.4902148,
        size.height * 0.3313162,
        size.width * 0.4505967,
        size.height * 0.2874433,
        size.width * 0.4429594,
        size.height * 0.2471004);
    path_31.close();

    Paint paint31Fill = Paint()..style = PaintingStyle.fill;
    paint31Fill.color = const Color(0xff865D50).withOpacity(1.0);
    canvas.drawPath(path_31, paint31Fill);

    Path path_32 = Path();
    path_32.moveTo(size.width * 0.4400955, size.height * 0.2471004);
    path_32.cubicTo(
        size.width * 0.4415274,
        size.height * 0.2133132,
        size.width * 0.4424821,
        size.height * 0.1775088,
        size.width * 0.4377088,
        size.height * 0.1442259);
    path_32.cubicTo(
        size.width * 0.4353222,
        size.height * 0.1285930,
        size.width * 0.4319809,
        size.height * 0.1089259,
        size.width * 0.4205251,
        size.height * 0.09732728);
    path_32.cubicTo(
        size.width * 0.4085919,
        size.height * 0.08522441,
        size.width * 0.4052506,
        size.height * 0.08673727,
        size.width * 0.3942721,
        size.height * 0.09127584);
    path_32.cubicTo(
        size.width * 0.3976134,
        size.height * 0.1018659,
        size.width * 0.3952267,
        size.height * 0.1089259,
        size.width * 0.3894988,
        size.height * 0.1270802);
    path_32.cubicTo(
        size.width * 0.3976134,
        size.height * 0.1412002,
        size.width * 0.4095465,
        size.height * 0.1724660,
        size.width * 0.4124105,
        size.height * 0.1880988);
    path_32.cubicTo(
        size.width * 0.4181384,
        size.height * 0.2223903,
        size.width * 0.4171838,
        size.height * 0.2566818,
        size.width * 0.4200477,
        size.height * 0.2909733);
    path_32.cubicTo(
        size.width * 0.4224344,
        size.height * 0.3212305,
        size.width * 0.4205251,
        size.height * 0.3519919,
        size.width * 0.4200477,
        size.height * 0.3822491);
    path_32.cubicTo(
        size.width * 0.4324582,
        size.height * 0.3560262,
        size.width * 0.4458234,
        size.height * 0.3267776,
        size.width * 0.4429594,
        size.height * 0.2965204);
    path_32.cubicTo(
        size.width * 0.4420048,
        size.height * 0.2844175,
        size.width * 0.4396181,
        size.height * 0.2718104,
        size.width * 0.4400955,
        size.height * 0.2586989);
    path_32.cubicTo(
        size.width * 0.4400955,
        size.height * 0.2551689,
        size.width * 0.4400955,
        size.height * 0.2511346,
        size.width * 0.4400955,
        size.height * 0.2471004);
    path_32.close();

    Paint paint32Fill = Paint()..style = PaintingStyle.fill;
    paint32Fill.color = const Color(0xffA2644B).withOpacity(1.0);
    canvas.drawPath(path_32, paint32Fill);

    Path path_33 = Path();
    path_33.moveTo(size.width * 0.3885442, size.height * 0.1280888);
    path_33.cubicTo(
        size.width * 0.4190931,
        size.height * 0.1638931,
        size.width * 0.4152745,
        size.height * 0.2435703,
        size.width * 0.4195704,
        size.height * 0.2909733);
    path_33.cubicTo(
        size.width * 0.4243437,
        size.height * 0.3479576,
        size.width * 0.4019093,
        size.height * 0.4553707,
        size.width * 0.4639618,
        size.height * 0.4795764);
    path_33.cubicTo(
        size.width * 0.4902148,
        size.height * 0.4896621,
        size.width * 0.5288783,
        size.height * 0.4699950,
        size.width * 0.5441527,
        size.height * 0.4417549);
    path_33.cubicTo(
        size.width * 0.5613365,
        size.height * 0.4099849,
        size.width * 0.5369928,
        size.height * 0.3802320,
        size.width * 0.5174224,
        size.height * 0.3600605);
    path_33.cubicTo(
        size.width * 0.4897375,
        size.height * 0.3308119,
        size.width * 0.4505967,
        size.height * 0.2869390,
        size.width * 0.4424821,
        size.height * 0.2471004);
    path_33.cubicTo(
        size.width * 0.4353222,
        size.height * 0.2107917,
        size.width * 0.4539379,
        size.height * 0.08320726,
        size.width * 0.3947494,
        size.height * 0.08825013);

    Paint paint33Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.006765155;
    paint33Stroke.color = const Color(0xff000000).withOpacity(1.0);
    paint33Stroke.strokeCap = StrokeCap.round;
    paint33Stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_33, paint33Stroke);

    Path path_34 = Path();
    path_34.moveTo(size.width * 0.4921241, size.height * 0.7362582);
    path_34.cubicTo(
        size.width * 0.4902148,
        size.height * 0.6944024,
        size.width * 0.5059666,
        size.height * 0.6399395,
        size.width * 0.4725537,
        size.height * 0.6106909);
    path_34.cubicTo(
        size.width * 0.4482100,
        size.height * 0.5895108,
        size.width * 0.4152745,
        size.height * 0.5642965,
        size.width * 0.3966587,
        size.height * 0.6046394);
    path_34.cubicTo(
        size.width * 0.3809069,
        size.height * 0.6384266,
        size.width * 0.3985680,
        size.height * 0.6712052,
        size.width * 0.4052506,
        size.height * 0.7049924);
    path_34.cubicTo(
        size.width * 0.4124105,
        size.height * 0.7407968,
        size.width * 0.4138425,
        size.height * 0.7766011,
        size.width * 0.4147971,
        size.height * 0.8129097);
    path_34.cubicTo(
        size.width * 0.4147971,
        size.height * 0.8250126,
        size.width * 0.4210024,
        size.height * 0.8310640,
        size.width * 0.4210024,
        size.height * 0.8537569);
    path_34.cubicTo(
        size.width * 0.4186158,
        size.height * 0.8693898,
        size.width * 0.4233890,
        size.height * 0.9092284,
        size.width * 0.4167064,
        size.height * 0.9198185);
    path_34.cubicTo(
        size.width * 0.3909308,
        size.height * 0.9309128,
        size.width * 0.3651551,
        size.height * 0.9717600,
        size.width * 0.3761337,
        size.height * 0.9899143);
    path_34.cubicTo(
        size.width * 0.4000000,
        size.height * 0.9989914,
        size.width * 0.4472554,
        size.height * 0.9959657,
        size.width * 0.4577566,
        size.height * 0.9924357);
    path_34.cubicTo(
        size.width * 0.4768496,
        size.height * 0.9853757,
        size.width * 0.4682578,
        size.height * 0.9722642,
        size.width * 0.4706444,
        size.height * 0.9652042);
    path_34.cubicTo(
        size.width * 0.4773270,
        size.height * 0.9470499,
        size.width * 0.4859189,
        size.height * 0.9561271,
        size.width * 0.4859189,
        size.height * 0.9399899);
    path_34.cubicTo(
        size.width * 0.4859189,
        size.height * 0.9147756,
        size.width * 0.4768496,
        size.height * 0.8915784,
        size.width * 0.4816229,
        size.height * 0.8653555);
    path_34.cubicTo(
        size.width * 0.4844869,
        size.height * 0.8502269,
        size.width * 0.4949881,
        size.height * 0.8451841,
        size.width * 0.4968974,
        size.height * 0.8310640);
    path_34.cubicTo(
        size.width * 0.5002387,
        size.height * 0.8013111,
        size.width * 0.4935561,
        size.height * 0.7700454,
        size.width * 0.4921241,
        size.height * 0.7362582);
    path_34.close();

    Paint paint34Fill = Paint()..style = PaintingStyle.fill;
    paint34Fill.color = const Color(0xffFFFFFF).withOpacity(1.0);
    canvas.drawPath(path_34, paint34Fill);

    Path path_35 = Path();
    path_35.moveTo(size.width * 0.4534606, size.height * 0.8870398);
    path_35.cubicTo(
        size.width * 0.4448687,
        size.height * 0.8799798,
        size.width * 0.4353222,
        size.height * 0.8729198,
        size.width * 0.4262530,
        size.height * 0.8658598);
    path_35.cubicTo(
        size.width * 0.3828162,
        size.height * 0.9364599,
        size.width * 0.4835322,
        size.height * 0.9198185,
        size.width * 0.4806683,
        size.height * 0.9470499);
    path_35.cubicTo(
        size.width * 0.4830549,
        size.height * 0.9183056,
        size.width * 0.4706444,
        size.height * 0.9016641,
        size.width * 0.4534606,
        size.height * 0.8870398);
    path_35.close();

    Paint paint35Fill = Paint()..style = PaintingStyle.fill;
    paint35Fill.color = const Color(0xffF0F4F6).withOpacity(1.0);
    canvas.drawPath(path_35, paint35Fill);

    Path path_36 = Path();
    path_36.moveTo(size.width * 0.3866348, size.height * 0.6364095);
    path_36.cubicTo(
        size.width * 0.4105012,
        size.height * 0.7110439,
        size.width * 0.4133652,
        size.height * 0.7443268,
        size.width * 0.4147971,
        size.height * 0.8134140);
    path_36.cubicTo(
        size.width * 0.4147971,
        size.height * 0.8255169,
        size.width * 0.4210024,
        size.height * 0.8315683,
        size.width * 0.4210024,
        size.height * 0.8542612);
    path_36.cubicTo(
        size.width * 0.4186158,
        size.height * 0.8698941,
        size.width * 0.4233890,
        size.height * 0.9097327,
        size.width * 0.4167064,
        size.height * 0.9203227);
    path_36.cubicTo(
        size.width * 0.3909308,
        size.height * 0.9314170,
        size.width * 0.3651551,
        size.height * 0.9722642,
        size.width * 0.3761337,
        size.height * 0.9904186);
    path_36.cubicTo(
        size.width * 0.4000000,
        size.height * 0.9994957,
        size.width * 0.4472554,
        size.height * 0.9964700,
        size.width * 0.4577566,
        size.height * 0.9929400);
    path_36.cubicTo(
        size.width * 0.4768496,
        size.height * 0.9858800,
        size.width * 0.4682578,
        size.height * 0.9727685,
        size.width * 0.4706444,
        size.height * 0.9657085);
    path_36.cubicTo(
        size.width * 0.4773270,
        size.height * 0.9475542,
        size.width * 0.4859189,
        size.height * 0.9566314,
        size.width * 0.4859189,
        size.height * 0.9404942);
    path_36.cubicTo(
        size.width * 0.4859189,
        size.height * 0.9152799,
        size.width * 0.4768496,
        size.height * 0.8920827,
        size.width * 0.4816229,
        size.height * 0.8658598);
    path_36.cubicTo(
        size.width * 0.4844869,
        size.height * 0.8507312,
        size.width * 0.4949881,
        size.height * 0.8456884,
        size.width * 0.4968974,
        size.height * 0.8315683);
    path_36.cubicTo(
        size.width * 0.5007160,
        size.height * 0.8008069,
        size.width * 0.4940334,
        size.height * 0.7695411,
        size.width * 0.4926014,
        size.height * 0.7362582);
    path_36.cubicTo(
        size.width * 0.4902148,
        size.height * 0.6833081,
        size.width * 0.4863962,
        size.height * 0.6222895,
        size.width * 0.4863962,
        size.height * 0.5693394);

    Paint paint36Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.006765155;
    paint36Stroke.color = const Color(0xff000000).withOpacity(1.0);
    paint36Stroke.strokeCap = StrokeCap.round;
    paint36Stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_36, paint36Stroke);

    Path path_37 = Path();
    path_37.moveTo(size.width * 0.2577566, size.height * 0.9248613);
    path_37.cubicTo(
        size.width * 0.2486874,
        size.height * 0.9344428,
        size.width * 0.2486874,
        size.height * 0.9495714,
        size.width * 0.2491647,
        size.height * 0.9631871);

    Paint paint37Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.006765155;
    paint37Stroke.color = const Color(0xff000000).withOpacity(1.0);
    paint37Stroke.strokeCap = StrokeCap.round;
    paint37Stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_37, paint37Stroke);

    Path path_38 = Path();
    path_38.moveTo(size.width * 0.2921241, size.height * 0.9248613);
    path_38.cubicTo(
        size.width * 0.2863962,
        size.height * 0.9359556,
        size.width * 0.2749403,
        size.height * 0.9384771,
        size.width * 0.2768496,
        size.height * 0.9657085);

    Paint paint38Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.006765155;
    paint38Stroke.color = const Color(0xff000000).withOpacity(1.0);
    paint38Stroke.strokeCap = StrokeCap.round;
    paint38Stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_38, paint38Stroke);

    Path path_39 = Path();
    path_39.moveTo(size.width * 0.4105012, size.height * 0.9475542);
    path_39.cubicTo(
        size.width * 0.4023866,
        size.height * 0.9581442,
        size.width * 0.3914081,
        size.height * 0.9798285,
        size.width * 0.3914081,
        size.height * 0.9929400);

    Paint paint39Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.006765155;
    paint39Stroke.color = const Color(0xff000000).withOpacity(1.0);
    paint39Stroke.strokeCap = StrokeCap.round;
    paint39Stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_39, paint39Stroke);

    Path path_40 = Path();
    path_40.moveTo(size.width * 0.4467780, size.height * 0.9541099);
    path_40.cubicTo(
        size.width * 0.4334129,
        size.height * 0.9626828,
        size.width * 0.4233890,
        size.height * 0.9803328,
        size.width * 0.4229117,
        size.height * 0.9949571);

    Paint paint40Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.006765155;
    paint40Stroke.color = const Color(0xff000000).withOpacity(1.0);
    paint40Stroke.strokeCap = StrokeCap.round;
    paint40Stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_40, paint40Stroke);

    Path path_41 = Path();
    path_41.moveTo(size.width * 0.2792363, size.height * 0.6707010);
    path_41.cubicTo(
        size.width * 0.2964200,
        size.height * 0.6782653,
        size.width * 0.3174224,
        size.height * 0.6828038,
        size.width * 0.3264916,
        size.height * 0.6812910);

    Paint paint41Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.006765155;
    paint41Stroke.color = const Color(0xff000000).withOpacity(1.0);
    paint41Stroke.strokeCap = StrokeCap.round;
    paint41Stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_41, paint41Stroke);

    Paint paint41Fill = Paint()..style = PaintingStyle.fill;
    paint41Fill.color = const Color(0xffFFFFFF).withOpacity(1.0);
    canvas.drawPath(path_41, paint41Fill);

    Path path_42 = Path();
    path_42.moveTo(size.width * 0.5928401, size.height * 0.8522441);
    path_42.cubicTo(
        size.width * 0.5804296,
        size.height * 0.8598084,
        size.width * 0.5699284,
        size.height * 0.8784670,
        size.width * 0.5713604,
        size.height * 0.8930913);

    Paint paint42Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.006765155;
    paint42Stroke.color = const Color(0xff000000).withOpacity(1.0);
    paint42Stroke.strokeCap = StrokeCap.round;
    paint42Stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_42, paint42Stroke);

    Path path_43 = Path();
    path_43.moveTo(size.width * 0.6252983, size.height * 0.8542612);
    path_43.cubicTo(
        size.width * 0.6095465,
        size.height * 0.8557741,
        size.width * 0.6047733,
        size.height * 0.8789713,
        size.width * 0.6062053,
        size.height * 0.8930913);

    Paint paint43Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.006765155;
    paint43Stroke.color = const Color(0xff000000).withOpacity(1.0);
    paint43Stroke.strokeCap = StrokeCap.round;
    paint43Stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_43, paint43Stroke);

    Path path_44 = Path();
    path_44.moveTo(size.width * 0.8463007, size.height * 0.9087242);
    path_44.cubicTo(
        size.width * 0.8429594,
        size.height * 0.9203227,
        size.width * 0.8400955,
        size.height * 0.9283913,
        size.width * 0.8377088,
        size.height * 0.9404942);

    Paint paint44Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.006765155;
    paint44Stroke.color = const Color(0xff000000).withOpacity(1.0);
    paint44Stroke.strokeCap = StrokeCap.round;
    paint44Stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_44, paint44Stroke);

    Path path_45 = Path();
    path_45.moveTo(size.width * 0.8873508, size.height * 0.9021684);
    path_45.cubicTo(
        size.width * 0.8840095,
        size.height * 0.9152799,
        size.width * 0.8730310,
        size.height * 0.9278870,
        size.width * 0.8744630,
        size.height * 0.9430156);

    Paint paint45Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.006765155;
    paint45Stroke.color = const Color(0xff000000).withOpacity(1.0);
    paint45Stroke.strokeCap = StrokeCap.round;
    paint45Stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_45, paint45Stroke);

    Path path_46 = Path();
    path_46.moveTo(size.width * 0.8486874, size.height * 0.8885527);
    path_46.cubicTo(
        size.width * 0.8587112,
        size.height * 0.8850227,
        size.width * 0.8701671,
        size.height * 0.8865356,
        size.width * 0.8811456,
        size.height * 0.8865356);

    Paint paint46Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.006765155;
    paint46Stroke.color = const Color(0xff000000).withOpacity(1.0);
    paint46Stroke.strokeCap = StrokeCap.round;
    paint46Stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_46, paint46Stroke);

    Path path_47 = Path();
    path_47.moveTo(size.width * 0.6210024, size.height * 0.8295512);
    path_47.cubicTo(
        size.width * 0.6124105,
        size.height * 0.8340898,
        size.width * 0.6420048,
        size.height * 0.8300555,
        size.width * 0.6491647,
        size.height * 0.8315683);

    Paint paint47Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.006765155;
    paint47Stroke.color = const Color(0xff000000).withOpacity(1.0);
    paint47Stroke.strokeCap = StrokeCap.round;
    paint47Stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_47, paint47Stroke);

    Path path_48 = Path();
    path_48.moveTo(size.width * 0.8119332, size.height * 0.3822491);
    path_48.cubicTo(
        size.width * 0.8377088,
        size.height * 0.4165406,
        size.width * 0.8443914,
        size.height * 0.4775593,
        size.width * 0.8591885,
        size.height * 0.5118507);

    Paint paint48Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.006765155;
    paint48Stroke.color = const Color(0xff000000).withOpacity(1.0);
    paint48Stroke.strokeCap = StrokeCap.round;
    paint48Stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_48, paint48Stroke);

    Path path_49 = Path();
    path_49.moveTo(size.width * 0.4410501, size.height * 0.2259203);
    path_49.cubicTo(
        size.width * 0.4410501,
        size.height * 0.2662632,
        size.width * 0.4477327,
        size.height * 0.3126576,
        size.width * 0.4353222,
        size.height * 0.3514876);

    Paint paint49Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.006765155;
    paint49Stroke.color = const Color(0xff000000).withOpacity(1.0);
    paint49Stroke.strokeCap = StrokeCap.round;
    paint49Stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_49, paint49Stroke);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
