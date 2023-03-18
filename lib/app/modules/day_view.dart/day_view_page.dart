import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/material.dart';

import 'day_view_widget.dart';

class DayViewPageDemo extends StatefulWidget {
  const DayViewPageDemo({Key? key}) : super(key: key);

  @override
  _DayViewPageDemoState createState() => _DayViewPageDemoState();
}

class _DayViewPageDemoState extends State<DayViewPageDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        elevation: 8,
        onPressed: () async {
          // final event =
          //     await context.pushRoute<CalendarEventData<Event>>(CreateEventPage(
          //   withDuration: true,
          // ));
          // if (event == null) return;
          // CalendarControllerProvider.of<Event>(context).controller.add(event);
        },
        child: Icon(Icons.add),
      ),
      body: const DayViewWidget(),
    );
  }
}
