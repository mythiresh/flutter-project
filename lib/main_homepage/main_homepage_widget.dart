import '../attendance/attendance_widget.dart';
import '../flutter_flow/flutter_flow_calendar.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../grievances/grievances_widget.dart';
import '../leave_request/leave_request_widget.dart';
import '../personal_info/personal_info_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainHomepageWidget extends StatefulWidget {
  const MainHomepageWidget({Key key}) : super(key: key);

  @override
  _MainHomepageWidgetState createState() => _MainHomepageWidgetState();
}

class _MainHomepageWidgetState extends State<MainHomepageWidget> {
  DateTimeRange calendarSelectedDay;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFFEAD1F),
        automaticallyImplyLeading: true,
        actions: [
          FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 0,
            borderWidth: 0,
            buttonSize: 60,
            icon: Icon(
              Icons.qr_code_scanner,
              color: FlutterFlowTheme.tertiaryColor,
              size: 30,
            ),
            onPressed: () {
              print('IconButton pressed ...');
            },
          ),
        ],
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Color(0xFFE2D59A),
      drawer: Drawer(
        elevation: 16,
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Color(0xFFE2D59A),
          ),
          child: ListView(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.vertical,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Color(0xFFE2D59A),
                ),
              ),
              Container(
                width: 120,
                height: 120,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'assets/images/sung-jin-woo-solo-leveling-uhdpaper.com-4K-7.1072-wp.thumbnail(1).jpg',
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                child: Text(
                  'Rashiv Mathesh',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.subtitle1.override(
                    fontFamily: 'Montserrat',
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                child: Text(
                  '9884143781',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.subtitle2.override(
                    fontFamily: 'Montserrat',
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                child: InkWell(
                  onTap: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PersonalInfoWidget(),
                      ),
                    );
                  },
                  child: ListTile(
                    title: Text(
                      'Personal Info',
                      style: FlutterFlowTheme.title3.override(
                        fontFamily: 'Montserrat',
                        color: Colors.black,
                        fontSize: 22,
                      ),
                    ),
                    tileColor: Color(0xFFF5F5F5),
                    dense: false,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                child: InkWell(
                  onTap: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AttendanceWidget(),
                      ),
                    );
                  },
                  child: ListTile(
                    title: Text(
                      'Attendance',
                      style: FlutterFlowTheme.title3.override(
                        fontFamily: 'Montserrat',
                        color: Colors.black,
                        fontSize: 22,
                      ),
                    ),
                    tileColor: Color(0xFFF5F5F5),
                    dense: false,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                child: InkWell(
                  onTap: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LeaveRequestWidget(),
                      ),
                    );
                  },
                  child: ListTile(
                    title: Text(
                      'Leave Request',
                      style: FlutterFlowTheme.title3.override(
                        fontFamily: 'Montserrat',
                        color: Colors.black,
                        fontSize: 22,
                      ),
                    ),
                    tileColor: Color(0xFFF5F5F5),
                    dense: false,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                child: InkWell(
                  onTap: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => GrievancesWidget(),
                      ),
                    );
                  },
                  child: ListTile(
                    title: Text(
                      'Grievences',
                      style: FlutterFlowTheme.title3.override(
                        fontFamily: 'Montserrat',
                        color: Colors.black,
                        fontSize: 22,
                      ),
                    ),
                    tileColor: Color(0xFFF5F5F5),
                    dense: false,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Image.asset(
              'assets/images/waves2x.png',
              width: 375,
              height: 53,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(40, 20, 40, 0),
              child: FlutterFlowCalendar(
                color: FlutterFlowTheme.primaryColor,
                iconColor: Colors.black,
                weekFormat: false,
                weekStartsMonday: false,
                onChange: (DateTimeRange newSelectedDate) {
                  setState(() => calendarSelectedDay = newSelectedDate);
                },
                titleStyle: TextStyle(
                  color: Colors.black,
                ),
                dayOfWeekStyle: TextStyle(
                  color: Colors.black,
                ),
                dateStyle: TextStyle(
                  color: Colors.black,
                ),
                selectedDateStyle: TextStyle(
                  color: Colors.black,
                ),
                inactiveDateStyle: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                  child: Text(
                    'Attendance',
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.subtitle1.override(
                      fontFamily: 'Montserrat',
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
              child: Image.asset(
                'assets/images/1_T1mxwPRidkWoB3UImGIvfA.jpeg',
                width: 300,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
