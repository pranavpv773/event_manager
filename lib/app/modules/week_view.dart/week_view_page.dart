import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/material.dart';

import 'week_view_widget.dart';

class WeekViewDemo extends StatefulWidget {
  const WeekViewDemo({Key? key}) : super(key: key);

  @override
  _WeekViewDemoState createState() => _WeekViewDemoState();
}

class _WeekViewDemoState extends State<WeekViewDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        elevation: 8,
        onPressed: _addEvent,
        child: Icon(Icons.add),
      ),
      body: const WeekViewWidget(),
    );
  }

  Future<void> _addEvent() async {
    // final event =
    //     await context.pushRoute<CalendarEventData<Event>>(CreateEventPage(
    //   withDuration: true,
    // ));
    // if (event == null) return;
    // CalendarControllerProvider.of<Event>(context).controller.add(event);
  }
}
