import 'package:flutter/material.dart';
import 'dart:math';

class PieChartComponent extends StatelessWidget {
  final List<double> data; // داده‌های ورودی
  final List<Color> colors; // رنگ‌های هر بخش
  final double outerRadius; // شعاع خارجی
  final double innerRadius; // شعاع داخلی

  const PieChartComponent({
    super.key,
    required this.data,
    required this.colors,
    required this.outerRadius,
    required this.innerRadius,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(outerRadius * 2, outerRadius * 2), // اندازه نمودار
      painter: PieChartPainter(data, colors, outerRadius, innerRadius),
    );
  }
}

class PieChartPainter extends CustomPainter {
  final List<double> data;
  final List<Color> colors;
  final double outerRadius;
  final double innerRadius;

  PieChartPainter(this.data, this.colors, this.outerRadius, this.innerRadius);

  @override
  void paint(Canvas canvas, Size size) {
    double total = data.reduce((a, b) => a + b);
    double startAngle = -pi / 2; // شروع از بالای دایره

    for (int i = 0; i < data.length; i++) {
      double sweepAngle = (data[i] / total) * 2 * pi; // زاویه هر بخش
      final paint = Paint()
        ..color = colors[i]
        ..style = PaintingStyle.fill;

      // رسم بخش دایره با گوشه‌های گرد
      Path path = Path()
        ..moveTo(size.width / 2, size.height / 2)
        ..lineTo(size.width / 2 + outerRadius * cos(startAngle),
            size.height / 2 + outerRadius * sin(startAngle))
        ..arcTo(
          Rect.fromCircle(
              center: Offset(size.width / 2, size.height / 2),
              radius: outerRadius),
          startAngle,
          sweepAngle,
          false,
        )
        ..lineTo(size.width / 2 + innerRadius * cos(startAngle + sweepAngle),
            size.height / 2 + innerRadius * sin(startAngle + sweepAngle))
        ..arcTo(
          Rect.fromCircle(
              center: Offset(size.width / 2, size.height / 2),
              radius: innerRadius),
          startAngle + sweepAngle,
          -sweepAngle,
          false,
        )
        ..close();

      canvas.drawPath(path, paint);
      startAngle += sweepAngle; // برو به بخش بعدی
    }

    // رسم دایره داخلی برای ایجاد فضای خالی
    final innerPaint = Paint()
      ..color = Colors.transparent // رنگ فضای داخلی
      ..style = PaintingStyle.fill;

    canvas.drawCircle(
        Offset(size.width / 2, size.height / 2), innerRadius, innerPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true; // همیشه بازنویسی می‌شود
  }
}



