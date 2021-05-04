

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bytebank/screens/dashboard.dart';
import 'package:bytebank/screens/contacts_list.dart';
import 'package:bytebank/screens/contact_form.dart';

import 'package:bytebank/main.dart';
import 'matchers.dart';
import 'mocks.dart';

void main() {
  testWidgets('Should save a contact', (tester) async {
    final mockContactDoa = MockContactDao();
    await tester.pumpWidget(BytebankApp(contactDao: mockContactDoa,));
    final dashboard = find.byType(Dashboard);
    expect(dashboard, findsOneWidget);
    //final transferFeatureItem = find.byWidgetPredicate((widget) =>
    //  featureItemMatcher(widget, 'Transfer', Icons.monetization_on));
    //await tester.tap(transferFeatureItem);
    //await tester.pumpAndSettle();

    //final contactList = find.byType(ContactsList);
   //expect(contactList, findsOneWidget);

    //final fabNewContact = find.widgetWithIcon(FloatingActionButton, Icons.add);
    //expect(fabNewContact, findsOneWidget);
    //await tester.tap(fabNewContact);
    //await tester.pumpAndSettle();

    //final contactForm = find.byType(ContactForm);
   // expect(contactForm, findsOneWidget);


  });
}
