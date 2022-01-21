import '../attendance/attendance_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../grievances/grievances_widget.dart';
import '../main_homepage/main_homepage_widget.dart';
import '../personal_info/personal_info_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LeaveRequestWidget extends StatefulWidget {
  const LeaveRequestWidget({Key key}) : super(key: key);

  @override
  _LeaveRequestWidgetState createState() => _LeaveRequestWidgetState();
}

class _LeaveRequestWidgetState extends State<LeaveRequestWidget> {
  TextEditingController textController1;
  TextEditingController textController2;
  TextEditingController textController3;
  TextEditingController textController4;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    textController3 = TextEditingController();
    textController4 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFFEAD1F),
        automaticallyImplyLeading: true,
        title: Text(
          'LEAVE REQUEST',
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
                    tileColor: FlutterFlowTheme.tertiaryColor,
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
        child: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(-0.88, -0.74),
              child: Text(
                'FROM:',
                style: FlutterFlowTheme.bodyText1.override(
                  fontFamily: 'Montserrat',
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.84, 0.08),
              child: Text(
                'SUBJECT:',
                style: FlutterFlowTheme.bodyText1.override(
                  fontFamily: 'Montserrat',
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.46, -0.78),
              child: Material(
                color: Colors.transparent,
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Container(
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextFormField(
                    onFieldSubmitted: (_) async {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            textController4.text,
                            style: TextStyle(),
                          ),
                          duration: Duration(milliseconds: 4000),
                          backgroundColor: Color(0x00000000),
                        ),
                      );
                    },
                    controller: textController1,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: 'DD/MM/YY',
                      hintStyle: FlutterFlowTheme.bodyText1,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                    ),
                    style: FlutterFlowTheme.bodyText1,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.53, 0.43),
              child: Material(
                color: Colors.transparent,
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Container(
                  width: 350,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextFormField(
                    onFieldSubmitted: (_) async {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            textController2.text,
                            style: TextStyle(),
                          ),
                          duration: Duration(milliseconds: 4000),
                          backgroundColor: Color(0x00000000),
                        ),
                      );
                    },
                    controller: textController2,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: 'Enter Subject Here..',
                      hintStyle: FlutterFlowTheme.bodyText1,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                    ),
                    style: FlutterFlowTheme.bodyText1,
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.13, -0.77),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                child: Text(
                  'TO:',
                  style: FlutterFlowTheme.bodyText1.override(
                    fontFamily: 'Montserrat',
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 0.88),
              child: FFButtonWidget(
                onPressed: () async {
                  await showDialog(
                    context: context,
                    builder: (alertDialogContext) {
                      return AlertDialog(
                        title: Text('REQUEST SENT!'),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(alertDialogContext),
                            child: Text('Ok'),
                          ),
                        ],
                      );
                    },
                  );
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MainHomepageWidget(),
                    ),
                  );
                },
                text: 'SUBMIT REQUEST',
                options: FFButtonOptions(
                  width: 150,
                  height: 40,
                  color: FlutterFlowTheme.primaryColor,
                  textStyle: FlutterFlowTheme.subtitle2.override(
                    fontFamily: 'Roboto',
                    color: Colors.white,
                    fontSize: 15,
                  ),
                  elevation: 8,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: 50,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.43, -0.38),
              child: Text(
                'NUMBER OF DAYS:',
                style: FlutterFlowTheme.bodyText1.override(
                  fontFamily: 'Montserrat',
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.29, -0.38),
              child: Material(
                color: Colors.transparent,
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextFormField(
                    onFieldSubmitted: (_) async {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            textController3.text,
                            style: TextStyle(),
                          ),
                          duration: Duration(milliseconds: 4000),
                          backgroundColor: Color(0x00000000),
                        ),
                      );
                    },
                    controller: textController3,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: 'Days',
                      hintStyle: FlutterFlowTheme.bodyText1,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                    ),
                    style: FlutterFlowTheme.bodyText1,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.7, -0.78),
              child: Material(
                color: Colors.transparent,
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Container(
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextFormField(
                    onFieldSubmitted: (_) async {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            textController4.text,
                            style: TextStyle(),
                          ),
                          duration: Duration(milliseconds: 4000),
                          backgroundColor: Color(0x00000000),
                        ),
                      );
                    },
                    controller: textController4,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: 'DD/MM/YY',
                      hintStyle: FlutterFlowTheme.bodyText1,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                    ),
                    style: FlutterFlowTheme.bodyText1,
                    textAlign: TextAlign.center,
                  ),
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
