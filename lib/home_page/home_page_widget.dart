import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main_homepage/main_homepage_widget.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  TextEditingController textController1;
  TextEditingController textController2;
  bool passwordVisibility;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    passwordVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
      body: Stack(
        children: [
          Image.asset(
            'assets/images/dWPZ79h.jpg',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 1,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(15, 300, 15, 0),
            child: DefaultTabController(
              length: 1,
              initialIndex: 0,
              child: Column(
                children: [
                  TabBar(
                    labelColor: FlutterFlowTheme.tertiaryColor,
                    labelStyle: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                    ),
                    indicatorColor: FlutterFlowTheme.tertiaryColor,
                    tabs: [
                      Tab(
                        text: 'LOGIN',
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
                                  EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                              child: TextFormField(
                                controller: textController1,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'USER NAME',
                                  labelStyle:
                                      FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF111010),
                                  ),
                                  hintText: 'Enter Your User Name',
                                  hintStyle:
                                      FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF111010),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.tertiaryColor,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.tertiaryColor,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  filled: true,
                                  fillColor: FlutterFlowTheme.tertiaryColor,
                                ),
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF111010),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                              child: TextFormField(
                                onChanged: (_) => EasyDebounce.debounce(
                                  'textController2',
                                  Duration(milliseconds: 2000),
                                  () => setState(() {}),
                                ),
                                controller: textController2,
                                obscureText: !passwordVisibility,
                                decoration: InputDecoration(
                                  labelText: 'PASSWORD',
                                  labelStyle: FlutterFlowTheme.bodyText1,
                                  hintText: 'Enter Your Password',
                                  hintStyle: FlutterFlowTheme.bodyText1,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.tertiaryColor,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.tertiaryColor,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  filled: true,
                                  fillColor: FlutterFlowTheme.tertiaryColor,
                                  suffixIcon: InkWell(
                                    onTap: () => setState(
                                      () => passwordVisibility =
                                          !passwordVisibility,
                                    ),
                                    child: Icon(
                                      passwordVisibility
                                          ? Icons.visibility_outlined
                                          : Icons.visibility_off_outlined,
                                      color: Color(0xFF757575),
                                      size: 22,
                                    ),
                                  ),
                                ),
                                style: FlutterFlowTheme.bodyText1,
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          MainHomepageWidget(),
                                    ),
                                  );
                                },
                                text: 'LOGIN',
                                options: FFButtonOptions(
                                  width: 130,
                                  height: 40,
                                  color: Color(0xFF1B22C5),
                                  textStyle:
                                      FlutterFlowTheme.subtitle2.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                                  elevation: 8,
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1,
                                  ),
                                  borderRadius: 12,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                              child: Text(
                                'Forgot password?',
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.tertiaryColor,
                                  fontSize: 16,
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
        ],
      ),
    );
  }
}
