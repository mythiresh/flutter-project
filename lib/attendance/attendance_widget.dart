import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../grievances/grievances_widget.dart';
import '../leave_request/leave_request_widget.dart';
import '../main_homepage/main_homepage_widget.dart';
import '../personal_info/personal_info_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AttendanceWidget extends StatefulWidget {
  const AttendanceWidget({Key key}) : super(key: key);

  @override
  _AttendanceWidgetState createState() => _AttendanceWidgetState();
}

class _AttendanceWidgetState extends State<AttendanceWidget> {
  String dropDownValue;
  TextEditingController textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
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
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
              child: DefaultTabController(
                length: 2,
                initialIndex: 0,
                child: Column(
                  children: [
                    TabBar(
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.black,
                      labelStyle: FlutterFlowTheme.title3.override(
                        fontFamily: 'Montserrat',
                        fontSize: 17,
                      ),
                      indicatorColor: Colors.black,
                      tabs: [
                        Tab(
                          text: 'DAILY',
                        ),
                        Tab(
                          text: 'MONTHLY',
                        ),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          140, 0, 0, 0),
                                      child: Text(
                                        'DATE :',
                                        style:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Montserrat',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 0, 0, 0),
                                      child: Material(
                                        color: Colors.transparent,
                                        elevation: 4,
                                        child: Container(
                                          width: 90,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFE2D59A),
                                          ),
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(0, 0),
                                            child: TextFormField(
                                              onFieldSubmitted: (_) async {
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(
                                                  SnackBar(
                                                    content: Text(
                                                      dropDownValue,
                                                      style: TextStyle(),
                                                    ),
                                                    duration: Duration(
                                                        milliseconds: 4000),
                                                    backgroundColor:
                                                        Color(0x00000000),
                                                  ),
                                                );
                                              },
                                              controller: textController,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                hintText: 'DD/MM/YY',
                                                hintStyle: FlutterFlowTheme
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'Poppins',
                                                  color: Colors.black,
                                                  fontStyle: FontStyle.italic,
                                                ),
                                                enabledBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1,
                                                  ),
                                                  borderRadius:
                                                      const BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(4.0),
                                                    topRight:
                                                        Radius.circular(4.0),
                                                  ),
                                                ),
                                                focusedBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1,
                                                  ),
                                                  borderRadius:
                                                      const BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(4.0),
                                                    topRight:
                                                        Radius.circular(4.0),
                                                  ),
                                                ),
                                              ),
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Poppins',
                                                color: Colors.black,
                                                fontStyle: FontStyle.italic,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                                child: Material(
                                  color: Colors.transparent,
                                  elevation: 10,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  child: Container(
                                    width: 300,
                                    height: 250,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFE2D59A),
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Align(
                                      alignment: AlignmentDirectional(0.05, 0),
                                      child: Text(
                                        'ENTRY TIME : 8.00 AM\nEXIT TIME : 2.00 PM\nNO OF HOURS : 6HRS',
                                        style:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Montserrat',
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          lineHeight: 3,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          100, 0, 0, 0),
                                      child: Text(
                                        'MONTH :',
                                        style:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Montserrat',
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 0, 0, 0),
                                      child: FlutterFlowDropDown(
                                        initialOption: dropDownValue ??=
                                            'MONTH',
                                        options: [
                                          'JANUARY',
                                          'FEBRUARY',
                                          'MARCH',
                                          'APRIL',
                                          'MAY',
                                          'JUNE',
                                          'JULY',
                                          'AUGUST',
                                          'SEPTEMBER',
                                          'OCTOBER',
                                          'NOVEMBER',
                                          'DECEMBER'
                                        ].toList(),
                                        onChanged: (val) =>
                                            setState(() => dropDownValue = val),
                                        width: 120,
                                        height: 30,
                                        textStyle:
                                            FlutterFlowTheme.subtitle2.override(
                                          fontFamily: 'Montserrat',
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        fillColor: Color(0xFFEEEEEE),
                                        elevation: 5,
                                        borderColor: Colors.transparent,
                                        borderWidth: 0,
                                        borderRadius: 0,
                                        margin: EdgeInsetsDirectional.fromSTEB(
                                            12, 4, 12, 4),
                                        hidesUnderline: true,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                                child: Container(
                                  width: 350,
                                  height: 250,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFEEEEEE),
                                  ),
                                  child: Image.asset(
                                    'assets/images/download.jfif',
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                                child: Material(
                                  color: Colors.transparent,
                                  elevation: 10,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  child: Container(
                                    width: 350,
                                    height: 220,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFE2D59A),
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Align(
                                      alignment: AlignmentDirectional(0, 0.05),
                                      child: Text(
                                        'NO.OF.DAYS ATTENDED : 25\nNO.OF.LEAVES : 3\nTOTAL NO.OF.HOURS : 225 HRS\nPERCENTAGE : 89%',
                                        textAlign: TextAlign.center,
                                        style:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Montserrat',
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          lineHeight: 2.5,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
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
