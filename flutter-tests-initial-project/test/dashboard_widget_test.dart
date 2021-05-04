

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../lib/screens/dashboard.dart';
import 'matchers.dart';

void main() {
  testWidgets('Should display the main image when the Dashboard is opened',
      (WidgetTester tester) async {
        await tester.pumpWidget(MaterialApp(home:Dashboard()));
        final mainImage = find.byType(Image);
        expect(mainImage, findsOneWidget);
      });

  testWidgets('Should display the transfer feature when the Dashboard is opened',
          (WidgetTester tester) async {
        await tester.pumpWidget(MaterialApp(home:Dashboard()));
        //could be this way or using a predicate
        // final iconTransferFeatureItem = find.widgetWithIcon(
        //     FeatureItem,
        //     Icons.monetization_on);
        // expect(iconTransferFeatureItem, findsWidgets);
        // final nameTransferFeatureItem = find.widgetWithText(FeatureItem, "Transfer");
        // expect(nameTransferFeatureItem, findsOneWidget);
            final transferFeatureItem = find.byWidgetPredicate((widget) =>
                featureItemMatcher(widget, 'Transfer', Icons.monetization_on));
            expect(transferFeatureItem, findsOneWidget);
      });

  testWidgets('Should display the transfer feature when the Dashboard is opened',
          (WidgetTester tester) async {
            await tester.pumpWidget(MaterialApp(home: Dashboard()));
            final iconTransactionFeedFeatureItem = find.byWidgetPredicate((
                widget) =>
                featureItemMatcher(widget, 'Transaction Feed', Icons.description));
            expect(iconTransactionFeedFeatureItem, findsOneWidget);

          });
}

