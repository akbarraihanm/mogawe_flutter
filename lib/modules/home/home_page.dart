import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mogawe/core/flutter_flow/flutter_flow_theme.dart';
import 'package:mogawe/core/flutter_flow/flutter_flow_widgets.dart';
import 'package:mogawe/modules/inbox_notif/inbox/inbox/inbox_page.dart';
import 'package:mogawe/modules/inbox_notif/notification/notification_list/notification_list_page.dart';
import 'package:mogawe/modules/profile/profile_page.dart';
import 'package:mogawe/modules/wallet/wallet/wallet_page.dart';
import '../../../core/flutter_flow/flutter_flow_icon_button.dart';
import '../hire_me/hire_me_page.dart';

class HomePageWidget extends StatefulWidget {
  HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  bool _loadingButton1 = false;
  bool _loadingButton2 = false;
  bool _loadingButton3 = false;
  bool _loadingButton4 = false;
  bool _loadingButton5 = false;
  bool _loadingButton6 = false;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.primaryColor,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => WalletPage(),
              ),
            );
          },
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24, 0, 0, 0),
                child: Icon(
                  Icons.account_balance_wallet,
                  color: FlutterFlowTheme.secondaryColor,
                  size: 20,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                child: Text(
                  'Rp.350.000',
                  style: FlutterFlowTheme.title2.override(
                    fontFamily: 'Poppins',
                    color: FlutterFlowTheme.secondaryColor,
                  ),
                ),
              )
            ],
          ),
        ),
        actions: [
          FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30,
            borderWidth: 1,
            buttonSize: 44,
            icon: Icon(
              Icons.message_rounded,
              color: FlutterFlowTheme.secondaryColor,
              size: 24,
            ),
            onPressed: () async {
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => InboxPage(),
                ),
              );
            },
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 4, 0),
            child: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30,
              borderWidth: 1,
              buttonSize: 44,
              icon: Icon(
                Icons.notifications,
                color: FlutterFlowTheme.secondaryColor,
                size: 24,
              ),
              onPressed: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NotificationListPage(),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 24, 0),
            child: InkWell(
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfilePage(),
                  ),
                );
              },
              child: Container(
                width: 40,
                height: 40,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.network(
                  'https://picsum.photos/seed/168/600',
                ),
              ),
            ),
          )
        ],
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.secondaryColor,
      body: Stack(
        children: [
          Align(
            alignment: AlignmentDirectional(0, -1),
            child: Container(
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.primaryColor,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(
                        Icons.copyright,
                        color: FlutterFlowTheme.fieldColor,
                        size: 16,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                        child: Text(
                          '200pts',
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.secondaryColor,
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                    child: Image.asset(
                      'assets/images/card_banner_1.png',
                      width: double.infinity,
                      height: 148,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Target Harian',
                          style: FlutterFlowTheme.subtitle2.override(
                            fontFamily: 'Poppins',
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                    child: Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: FlutterFlowTheme.fieldColor,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 64,
                              child: Stack(
                                alignment: AlignmentDirectional(0, 0),
                                children: [
                                  Container(
                                    width: double.infinity,
                                    height: 160,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.secondaryColor,
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: double.infinity,
                                          height: 32,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.moGaweGreen,
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(16),
                                              bottomRight: Radius.circular(16),
                                              topLeft: Radius.circular(0),
                                              topRight: Radius.circular(0),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Text(
                                    '20%',
                                    style: FlutterFlowTheme.subtitle1.override(
                                      fontFamily: 'Poppins',
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(24, 0, 0, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Kejar sisa target hari ini:',
                                      style:
                                          FlutterFlowTheme.bodyText1.override(
                                        fontFamily: 'Poppins',
                                        fontSize: 12,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 4, 0, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            'Rp.120.000',
                                            style: FlutterFlowTheme.title1
                                                .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.primaryColor,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8, 0, 0, 0),
                                            child: Icon(
                                              Icons.edit_rounded,
                                              color: FlutterFlowTheme
                                                  .tertiaryColor,
                                              size: 20,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 4, 0, 0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          setState(
                                              () => _loadingButton1 = true);
                                          try {
                                            await Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    HireMePage(),
                                              ),
                                            );
                                          } finally {
                                            setState(
                                                () => _loadingButton1 = false);
                                          }
                                        },
                                        text: 'Tambah Gawean',
                                        options: FFButtonOptions(
                                          width: 160,
                                          height: 32,
                                          color: FlutterFlowTheme.primaryColor,
                                          textStyle: FlutterFlowTheme.subtitle2
                                              .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                            fontSize: 12,
                                          ),
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 1,
                                          ),
                                          borderRadius: 12,
                                        ),
                                        loading: _loadingButton1,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 8, 0, 0),
                                      child: Text(
                                        'Pesonamu:',
                                        style:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Poppins',
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width: 40,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.moGaweGreen,
                                            boxShadow: [
                                              BoxShadow(
                                                blurRadius: 2,
                                                color: Color(0x8F515151),
                                                offset: Offset(0, 2),
                                                spreadRadius: 0,
                                              )
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: Icon(
                                            Icons.calculate,
                                            color:
                                                FlutterFlowTheme.secondaryColor,
                                            size: 24,
                                          ),
                                        ),
                                        Container(
                                          width: 40,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.moGaweGreen,
                                            boxShadow: [
                                              BoxShadow(
                                                blurRadius: 2,
                                                color: Color(0x8F515151),
                                                offset: Offset(0, 2),
                                                spreadRadius: 0,
                                              )
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(0, 0),
                                            child: FaIcon(
                                              FontAwesomeIcons.instagram,
                                              color: FlutterFlowTheme
                                                  .secondaryColor,
                                              size: 24,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 40,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.moGaweGreen,
                                            boxShadow: [
                                              BoxShadow(
                                                blurRadius: 2,
                                                color: Color(0x8F515151),
                                                offset: Offset(0, 2),
                                                spreadRadius: 0,
                                              )
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: Icon(
                                            Icons.delivery_dining,
                                            color:
                                                FlutterFlowTheme.secondaryColor,
                                            size: 24,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  4, 0, 0, 0),
                                          child: Text(
                                            '+12',
                                            style: FlutterFlowTheme.subtitle1
                                                .override(
                                              fontFamily: 'Poppins',
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Gawean',
                          style: FlutterFlowTheme.subtitle2.override(
                            fontFamily: 'Poppins',
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                          child: Icon(
                            Icons.add_circle,
                            color: FlutterFlowTheme.primaryColor,
                            size: 20,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Container(
                            width: 100,
                            height: 52,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.primaryColor,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(16),
                                bottomRight: Radius.circular(0),
                                topLeft: Radius.circular(16),
                                topRight: Radius.circular(0),
                              ),
                              border: Border.all(
                                color: FlutterFlowTheme.primaryColor,
                              ),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: Text(
                                'Penugasan',
                                style: FlutterFlowTheme.subtitle2.override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.secondaryColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: 100,
                            height: 52,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.secondaryColor,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(0),
                                bottomRight: Radius.circular(16),
                                topLeft: Radius.circular(0),
                                topRight: Radius.circular(16),
                              ),
                              border: Border.all(
                                color: FlutterFlowTheme.primaryColor,
                              ),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: Text(
                                'Etalase',
                                style: FlutterFlowTheme.subtitle2.override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.primaryColor,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                    child: Image.asset(
                      'assets/images/im_no_job.png',
                      width: double.infinity,
                      height: 242,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                    child: Text(
                      'Wah, kamu belum punya hire_me\nyang bisa dikerjain lagi.',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.subtitle2.override(
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                    child: FFButtonWidget(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: 'Dapatkan penugasan baru',
                      options: FFButtonOptions(
                        width: 240,
                        height: 48,
                        color: FlutterFlowTheme.secondaryColor,
                        textStyle: FlutterFlowTheme.subtitle2.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.primaryColor,
                          fontSize: 12,
                        ),
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.primaryColor,
                          width: 1,
                        ),
                        borderRadius: 12,
                      ),
                      loading: _loadingButton2,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                    child: FFButtonWidget(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: 'Tambahkan pesonamu',
                      options: FFButtonOptions(
                        width: 240,
                        height: 48,
                        color: FlutterFlowTheme.secondaryColor,
                        textStyle: FlutterFlowTheme.subtitle2.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.primaryColor,
                          fontSize: 12,
                        ),
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.primaryColor,
                          width: 1,
                        ),
                        borderRadius: 12,
                      ),
                      loading: _loadingButton3,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Gawean',
                          style: FlutterFlowTheme.subtitle2.override(
                            fontFamily: 'Poppins',
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                          child: Icon(
                            Icons.add_circle,
                            color: FlutterFlowTheme.primaryColor,
                            size: 20,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Container(
                            width: 100,
                            height: 52,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.primaryColor,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(16),
                                bottomRight: Radius.circular(0),
                                topLeft: Radius.circular(16),
                                topRight: Radius.circular(0),
                              ),
                              border: Border.all(
                                color: FlutterFlowTheme.primaryColor,
                              ),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: Text(
                                'Penugasan',
                                style: FlutterFlowTheme.subtitle2.override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.secondaryColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: 100,
                            height: 52,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.secondaryColor,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(0),
                                bottomRight: Radius.circular(16),
                                topLeft: Radius.circular(0),
                                topRight: Radius.circular(16),
                              ),
                              border: Border.all(
                                color: FlutterFlowTheme.primaryColor,
                              ),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: Text(
                                'Etalase',
                                style: FlutterFlowTheme.subtitle2.override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.primaryColor,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
                          child: Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: FlutterFlowTheme.secondaryColor,
                            elevation: 2,
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16, 16, 16, 16),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.network(
                                      'https://picsum.photos/seed/879/600',
                                      width: 92,
                                      height: 114,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16, 0, 0, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Teknisi Mesin EDC',
                                                style: FlutterFlowTheme
                                                    .subtitle2
                                                    .override(
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              FaIcon(
                                                FontAwesomeIcons.ellipsisV,
                                                color: Colors.black,
                                                size: 16,
                                              )
                                            ],
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 8, 0, 0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                FaIcon(
                                                  FontAwesomeIcons.calendarAlt,
                                                  color: Colors.black,
                                                  size: 12,
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(8, 0, 0, 0),
                                                  child: Text(
                                                    'Expired in 3 days',
                                                    style: FlutterFlowTheme
                                                        .bodyText2
                                                        .override(
                                                      fontFamily: 'Poppins',
                                                      color: Color(0xFF8C8C8C),
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 8, 0, 0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Icon(
                                                  Icons.money,
                                                  color: Colors.black,
                                                  size: 12,
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(8, 0, 0, 0),
                                                  child: Text(
                                                    'Rp.75.000',
                                                    style: FlutterFlowTheme
                                                        .bodyText2
                                                        .override(
                                                      fontFamily: 'Poppins',
                                                      color: Color(0xFF8C8C8C),
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 8, 0, 0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Icon(
                                                        Icons.location_on,
                                                        color: Colors.black,
                                                        size: 12,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    8, 0, 0, 0),
                                                        child: Text(
                                                          'Cilandak ...',
                                                          style:
                                                              FlutterFlowTheme
                                                                  .bodyText2
                                                                  .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            color: Color(
                                                                0xFF8C8C8C),
                                                            fontSize: 12,
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              FFButtonWidget(
                                                onPressed: () {
                                                  print('Button pressed ...');
                                                },
                                                text: 'Mulai',
                                                options: FFButtonOptions(
                                                  width: 80,
                                                  height: 32,
                                                  color: FlutterFlowTheme
                                                      .secondaryColor,
                                                  textStyle: FlutterFlowTheme
                                                      .bodyText1
                                                      .override(
                                                    fontFamily: 'Poppins',
                                                    color: FlutterFlowTheme
                                                        .primaryColor,
                                                    fontSize: 12,
                                                  ),
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme
                                                        .primaryColor,
                                                    width: 1,
                                                  ),
                                                  borderRadius: 12,
                                                ),
                                                loading: _loadingButton4,
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
                          child: Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: FlutterFlowTheme.secondaryColor,
                            elevation: 2,
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16, 16, 16, 16),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.network(
                                      'https://picsum.photos/seed/879/600',
                                      width: 92,
                                      height: 114,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16, 0, 0, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Teknisi Mesin EDC',
                                                style: FlutterFlowTheme
                                                    .subtitle2
                                                    .override(
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              FaIcon(
                                                FontAwesomeIcons.ellipsisV,
                                                color: Colors.black,
                                                size: 16,
                                              )
                                            ],
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 8, 0, 0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                FaIcon(
                                                  FontAwesomeIcons.calendarAlt,
                                                  color: Colors.black,
                                                  size: 12,
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(8, 0, 0, 0),
                                                  child: Text(
                                                    'Expired in 3 days',
                                                    style: FlutterFlowTheme
                                                        .bodyText2
                                                        .override(
                                                      fontFamily: 'Poppins',
                                                      color: Color(0xFF8C8C8C),
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 8, 0, 0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Icon(
                                                  Icons.money,
                                                  color: Colors.black,
                                                  size: 12,
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(8, 0, 0, 0),
                                                  child: Text(
                                                    'Rp.75.000',
                                                    style: FlutterFlowTheme
                                                        .bodyText2
                                                        .override(
                                                      fontFamily: 'Poppins',
                                                      color: Color(0xFF8C8C8C),
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 8, 0, 0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Icon(
                                                        Icons.location_on,
                                                        color: Colors.black,
                                                        size: 12,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    8, 0, 0, 0),
                                                        child: Text(
                                                          'Cilandak ...',
                                                          style:
                                                              FlutterFlowTheme
                                                                  .bodyText2
                                                                  .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            color: Color(
                                                                0xFF8C8C8C),
                                                            fontSize: 12,
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              FFButtonWidget(
                                                onPressed: () {
                                                  print('Button pressed ...');
                                                },
                                                text: 'Mulai',
                                                options: FFButtonOptions(
                                                  width: 80,
                                                  height: 32,
                                                  color: FlutterFlowTheme
                                                      .secondaryColor,
                                                  textStyle: FlutterFlowTheme
                                                      .bodyText1
                                                      .override(
                                                    fontFamily: 'Poppins',
                                                    color: FlutterFlowTheme
                                                        .primaryColor,
                                                    fontSize: 12,
                                                  ),
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme
                                                        .primaryColor,
                                                    width: 1,
                                                  ),
                                                  borderRadius: 12,
                                                ),
                                                loading: _loadingButton5,
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
                          child: Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: FlutterFlowTheme.secondaryColor,
                            elevation: 2,
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16, 16, 16, 16),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.network(
                                      'https://picsum.photos/seed/879/600',
                                      width: 92,
                                      height: 114,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16, 0, 0, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Teknisi Mesin EDC',
                                                style: FlutterFlowTheme
                                                    .subtitle2
                                                    .override(
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              FaIcon(
                                                FontAwesomeIcons.ellipsisV,
                                                color: Colors.black,
                                                size: 16,
                                              )
                                            ],
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 8, 0, 0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                FaIcon(
                                                  FontAwesomeIcons.calendarAlt,
                                                  color: Colors.black,
                                                  size: 12,
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(8, 0, 0, 0),
                                                  child: Text(
                                                    'Expired in 3 days',
                                                    style: FlutterFlowTheme
                                                        .bodyText2
                                                        .override(
                                                      fontFamily: 'Poppins',
                                                      color: Color(0xFF8C8C8C),
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 8, 0, 0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Icon(
                                                  Icons.money,
                                                  color: Colors.black,
                                                  size: 12,
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(8, 0, 0, 0),
                                                  child: Text(
                                                    'Rp.75.000',
                                                    style: FlutterFlowTheme
                                                        .bodyText2
                                                        .override(
                                                      fontFamily: 'Poppins',
                                                      color: Color(0xFF8C8C8C),
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 8, 0, 0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Icon(
                                                        Icons.location_on,
                                                        color: Colors.black,
                                                        size: 12,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    8, 0, 0, 0),
                                                        child: Text(
                                                          'Cilandak ...',
                                                          style:
                                                              FlutterFlowTheme
                                                                  .bodyText2
                                                                  .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            color: Color(
                                                                0xFF8C8C8C),
                                                            fontSize: 12,
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              FFButtonWidget(
                                                onPressed: () {
                                                  print('Button pressed ...');
                                                },
                                                text: 'Mulai',
                                                options: FFButtonOptions(
                                                  width: 80,
                                                  height: 32,
                                                  color: FlutterFlowTheme
                                                      .secondaryColor,
                                                  textStyle: FlutterFlowTheme
                                                      .bodyText1
                                                      .override(
                                                    fontFamily: 'Poppins',
                                                    color: FlutterFlowTheme
                                                        .primaryColor,
                                                    fontSize: 12,
                                                  ),
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme
                                                        .primaryColor,
                                                    width: 1,
                                                  ),
                                                  borderRadius: 12,
                                                ),
                                                loading: _loadingButton6,
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
