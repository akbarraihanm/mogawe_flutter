import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mogawe/core/data/response/profile/profile_response.dart';
import 'package:mogawe/core/flutter_flow/flutter_flow_theme.dart';
import 'package:mogawe/utils/ui/widgets/app_util.dart';

class PersonalTab extends StatefulWidget {

  final ObjectData? data;
  final Function(Map<String, String> map)? updateProfile;
  final Function(Map<String, dynamic> map)? updateTarget;

  const PersonalTab({Key? key, this.data, this.updateProfile,
    this.updateTarget}) : super(key: key);

  @override
  _PersonalTabState createState() => _PersonalTabState();
}

class _PersonalTabState extends State<PersonalTab> {

  String? targetHarian;
  String? nama;
  String? email;
  String? phone;
  String? birthdate;
  String? gender;
  List<String> genders = ["Laki-laki", "Perempuan"];

  Map<String, String> map = Map();
  Map<String, dynamic> revenueMap = Map();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(
              16, 24, 16, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Preferensi',
                style:
                FlutterFlowTheme.bodyText1.override(
                  fontFamily: 'Poppins',
                  color: FlutterFlowTheme.primaryColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(
                    0, 16, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Text(
                        'Akreditasi',
                        style: FlutterFlowTheme.bodyText1
                            .override(
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                    Text(
                      ' ',
                      style: FlutterFlowTheme.bodyText1
                          .override(
                        fontFamily: 'Poppins',
                      ),
                    ),
                    Icon(
                      Icons.chevron_right,
                      color: Colors.black,
                      size: 24,
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(
                    0, 16, 0, 0),
                child: InkWell(
                  onTap: () => showEditDialog(context,
                      title: "Masukkan Target Harian: ",
                    type: TextInputType.number,
                    field: "targetRevenue",
                    value: targetHarian
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Text(
                          'Target Harian',
                          style: FlutterFlowTheme.bodyText1
                              .override(
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                      Text(
                        widget.data == null? "":
                        " "+AppUtil.toIDR(widget.data!.config!.targetRevenue!),
                        style: FlutterFlowTheme.bodyText1
                            .override(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                        ),
                      ),
                      Icon(
                        Icons.chevron_right,
                        color: Colors.black,
                        size: 24,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(
              16, 24, 16, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Personal Info',
                style:
                FlutterFlowTheme.bodyText1.override(
                  fontFamily: 'Poppins',
                  color: FlutterFlowTheme.primaryColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(
                    0, 16, 0, 0),
                child: InkWell(
                  onTap: () => showEditDialog(
                    context,
                    title: "Masukkan Nama Lengkap : ",
                    value: nama,
                    field: "fullName",
                    onChanged: (v) {
                      nama = v;
                      if (v.isEmpty) nama = null;
                      setState(() {});
                    }
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Text(
                          'Nama',
                          style: FlutterFlowTheme.bodyText1
                              .override(
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                      Text(
                        widget.data != null? ' ${widget.data!.fullName}': "",
                        style: FlutterFlowTheme.bodyText1
                            .override(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                        ),
                      ),
                      Icon(
                        Icons.chevron_right,
                        color: Colors.black,
                        size: 24,
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(
                    0, 16, 0, 0),
                child: InkWell(
                  onTap: () => showEditDialog(
                    context,
                    title: "Masukkan Email :",
                    value: email,
                    field: "email",
                    type: TextInputType.emailAddress,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Text(
                          'Email',
                          style: FlutterFlowTheme.bodyText1
                              .override(
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                      Text(
                        widget.data != null? '${widget.data!.email}': "",
                        style: FlutterFlowTheme.bodyText1
                            .override(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                        ),
                      ),
                      Icon(
                        Icons.chevron_right,
                        color: Colors.black,
                        size: 24,
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(
                    0, 16, 0, 0),
                child: InkWell(
                  onTap: () => showEditDialog(
                    context,
                    title: "Masukkan No Handphone : ",
                    type: TextInputType.number,
                    value: phone,
                    field: "phone",
                    onChanged: (v) {
                      phone = v;
                      if (v.isEmpty) phone = null;
                      setState(() {});
                    }
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Text(
                          'No Handphone',
                          style: FlutterFlowTheme.bodyText1
                              .override(
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                      Text(
                        widget.data != null? '${widget.data!.phone}': "",
                        style: FlutterFlowTheme.bodyText1
                            .override(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                        ),
                      ),
                      Icon(
                        Icons.chevron_right,
                        color: Colors.black,
                        size: 24,
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(
                    0, 16, 0, 0),
                child: InkWell(
                  onTap: () => datePicker(),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Text(
                          'Tanggal Lahir',
                          style: FlutterFlowTheme.bodyText1
                              .override(
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                      Text(
                        widget.data != null? AppUtil.formatDateTime(
                            dateTime: DateTime.fromMillisecondsSinceEpoch(widget.data!.birthdate!),
                            dateFormat: "dd - MMM - yyyy"
                        ): "",
                        style: FlutterFlowTheme.bodyText1
                            .override(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                        ),
                      ),
                      Icon(
                        Icons.chevron_right,
                        color: Colors.black,
                        size: 24,
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(
                    0, 16, 0, 0),
                child: InkWell(
                  onTap: () => showEditDialog(
                    context,
                    title: "Pilih Jenis Kelamin : ",
                    isGender: true
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Text(
                          'Jenis Kelamin',
                          style: FlutterFlowTheme.bodyText1
                              .override(
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                      Text(
                        widget.data != null?
                        widget.data!.gender == "F"? 'Perempuan': 'Laki - laki': "",
                        style: FlutterFlowTheme.bodyText1
                            .override(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                        ),
                      ),
                      Icon(
                        Icons.chevron_right,
                        color: Colors.black,
                        size: 24,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  void showEditDialog(BuildContext ctx,
      {String? title, Function(String v)? onChanged, TextInputType? type,
        String? value, bool isGender = false, String? field}) {
    showDialog(
        context: ctx,
        builder: (ctx) => AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title ?? "", style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w600
              )),
              SizedBox(height: 12),
              isGender? Container(
                height: 72,
                width: 200,
                child: ListView.separated(
                  itemCount: genders.length,
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  separatorBuilder: (ctx, _) => Container(height: 1, color: Colors.black12),
                  itemBuilder: (ctx, pos) => InkWell(
                    onTap: () {
                      gender = genders[pos];
                      map["gender"] = gender == "Laki-laki"? "M": "F";
                      widget.updateProfile!(map);
                      map.clear();
                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(genders[pos]),
                    ),
                  ),
                ),
              ): Container(
                height: 32,
                child: TextFormField(
                  onChanged: (v) {
                    value = v;
                    if (v.isEmpty) value = null;
                    setState(() {});
                  },
                  keyboardType: type ?? TextInputType.text,
                ),
              )
            ],
          ),
          actions: !isGender? [
            TextButton(
              child: Text("Cancel"),
              onPressed: () => Navigator.pop(context),
            ),
            TextButton(
              child: Text("Simpan"),
              onPressed: () {
                if (value != null) {
                  save(value!, field!);
                  Navigator.pop(context);
                }
                else Fluttertoast.showToast(msg: "Harus diisi");
              },
            ),
          ]: [],
        )
    );
  }

  void datePicker() async{
    var datetime = await showDatePicker(
      context: context,
      firstDate: DateTime(1970),
      lastDate: DateTime(DateTime.now().year-17),
      initialDate: DateTime(DateTime.now().year-17),
    );
    if (datetime != null) {
      birthdate = AppUtil.formatDateTime(dateFormat: "yyyy-MM-dd",
          dateTime: datetime);
      map["birthdate"] = birthdate!;
      widget.updateProfile!(map);
      map.clear();
    } else {
      Fluttertoast.showToast(msg: "No selected date");
    }
  }

  void save(String value, String field) {
    if (field == "fullName") {
      map["fullName"] = value;
    } if (field == "gender") {
      map["gender"] = gender == "Laki-laki"? "M": "F";
    } if (field == "email") {
      map["email"] = value;
    } if (field == "targetRevenue") {
      revenueMap["targetRevenue"] = int.parse(value);
    }
    if (field == "targetRevenue") {
      widget.updateTarget!(revenueMap);
    } else widget.updateProfile!(map);
    map.clear();
  }
}

