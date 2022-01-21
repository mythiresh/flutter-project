import '../attendance/attendance_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../leave_request/leave_request_widget.dart';
import '../main_homepage/main_homepage_widget.dart';
import '../personal_info/personal_info_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GrievancesWidget extends StatefulWidget {
  const GrievancesWidget({Key key}) : super(key: key);

  @override
  _GrievancesWidgetState createState() => _GrievancesWidgetState();
}

class _GrievancesWidgetState extends State<GrievancesWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFFEAD1F),
        automaticallyImplyLeading: true,
        title: Text(
          'GRIEVANCES',
          textAlign: TextAlign.center,
          style: FlutterFlowTheme.bodyText1.override(
            fontFamily: 'Montserrat',
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30,
            borderWidth: 1,
            buttonSize: 60,
            icon: Icon(
              Icons.home,
              color: FlutterFlowTheme.tertiaryColor,
              size: 21,
            ),
            onPressed: () async {
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MainHomepageWidget(),
                ),
              );
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
            color: Color(0xFFEEEEEE),
          ),
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
                      fontFamily: 'Roboto',
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
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(0.08, -0.66),
              child: Material(
                color: Colors.transparent,
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Container(
                  width: 350,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Color(0xFFE2D59A),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                    child: Text(
                      'TICKET NO                                     16112021\nRAISED ON                                     16-Nov\nCLOSURE DATE                             16-Nov\nSTATUS                                           Closed\n',
                      style: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Montserrat',
                        fontSize: 15,
                        lineHeight: 1.7,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.08, -0.03),
              child: Material(
                color: Colors.transparent,
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Container(
                  width: 350,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Color(0xFFE2D59A),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                    child: Text(
                      'TICKET NO\nRAISED ON\nCLOSURE DATE\nSTATUS',
                      style: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Montserrat',
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        lineHeight: 1.7,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.96, 0.85),
              child: FFButtonWidget(
                onPressed: () {
                  print('Button pressed ...');
                },
                text: '',
                icon: Icon(
                  Icons.chat,
                  size: 50,
                ),
                options: FFButtonOptions(
                  width: 100,
                  height: 100,
                  color: FlutterFlowTheme.primaryColor,
                  textStyle: FlutterFlowTheme.subtitle2.override(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                  ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: 500,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, -1),
              child: Image.asset(
                'assets/images/waves2x_(2).png',
                width: 375,
                height: 53,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
