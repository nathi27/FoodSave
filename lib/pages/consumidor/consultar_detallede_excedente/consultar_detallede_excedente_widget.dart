import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'consultar_detallede_excedente_model.dart';
export 'consultar_detallede_excedente_model.dart';

class ConsultarDetalledeExcedenteWidget extends StatefulWidget {
  const ConsultarDetalledeExcedenteWidget({
    super.key,
    required this.excedenteRef,
  });

  final DocumentReference? excedenteRef;

  static String routeName = 'ConsultarDetalledeExcedente';
  static String routePath = '/consultarDetalledeExcedente';

  @override
  State<ConsultarDetalledeExcedenteWidget> createState() =>
      _ConsultarDetalledeExcedenteWidgetState();
}

class _ConsultarDetalledeExcedenteWidgetState
    extends State<ConsultarDetalledeExcedenteWidget> {
  late ConsultarDetalledeExcedenteModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ConsultarDetalledeExcedenteModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<ExcedentesRecord>(
      stream: ExcedentesRecord.getDocument(widget.excedenteRef!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }

        final consultarDetalledeExcedenteExcedentesRecord = snapshot.data!;

        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          body: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: MediaQuery.sizeOf(context).height * 1.0,
                    child: Stack(
                      children: [
                        Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: MediaQuery.sizeOf(context).height * 1.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: Image.asset(
                                'assets/images/Diseo_ecolgico_minimalista_FoodSave.png',
                              ).image,
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment:
                                (FFMainAxisAlignment.center).flutterValue,
                            children: [
                              Container(
                                width: 412.1,
                                height: 726.64,
                                decoration: BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      (FFMainAxisAlignment.start).flutterValue,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          (FFMainAxisAlignment.center)
                                              .flutterValue,
                                      crossAxisAlignment:
                                          (FFCrossAxisAlignment.center)
                                              .flutterValue,
                                      textBaseline: TextBaseline.alphabetic,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 40.0, 0.0, 0.0),
                                          child: Text(
                                            'Detalle de los Excendentes ',
                                            style: FlutterFlowTheme.of(context)
                                                .titleMedium
                                                .override(
                                                  font: GoogleFonts.oswald(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleMedium
                                                            .fontWeight,
                                                    fontStyle: FontStyle.italic,
                                                  ),
                                                  fontSize: 25.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontWeight,
                                                  fontStyle: FontStyle.italic,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          (FFMainAxisAlignment.center)
                                              .flutterValue,
                                      children: [
                                        Flexible(
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsets.all(
                                                  FlutterFlowTheme.of(context)
                                                      .designToken
                                                      .spacing
                                                      .sm),
                                              child: Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        1.0,
                                                height:
                                                    MediaQuery.sizeOf(context)
                                                            .height *
                                                        1.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.all(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .designToken
                                                              .spacing
                                                              .sm),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            (FFMainAxisAlignment
                                                                    .center)
                                                                .flutterValue,
                                                        children: [
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding: EdgeInsets.all(
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .designToken
                                                                        .spacing
                                                                        .sm),
                                                                child:
                                                                    Container(
                                                                  width: 200.0,
                                                                  height: 200.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            10.0,
                                                                            0.0,
                                                                            10.0),
                                                                    child:
                                                                        ClipRRect(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                      child: Image
                                                                          .network(
                                                                        consultarDetalledeExcedenteExcedentesRecord
                                                                            .fotoURL,
                                                                        width:
                                                                            200.0,
                                                                        height:
                                                                            200.0,
                                                                        fit: BoxFit
                                                                            .cover,
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
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  10.0,
                                                                  0.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Flexible(
                                                                child:
                                                                    Container(
                                                                  width: MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      1.0,
                                                                  height: 46.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: Color(
                                                                          0xFFA2A2A2),
                                                                    ),
                                                                  ),
                                                                  child: Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            -1.0,
                                                                            0.0),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsets.all(FlutterFlowTheme.of(
                                                                              context)
                                                                          .designToken
                                                                          .spacing
                                                                          .sm),
                                                                      child:
                                                                          Text(
                                                                        'Nombre Producto:${consultarDetalledeExcedenteExcedentesRecord.nombre}',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .headlineMedium
                                                                            .override(
                                                                              font: GoogleFonts.oswald(
                                                                                fontWeight: FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                                                                              ),
                                                                              fontSize: 20.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Flexible(
                                                                child:
                                                                    Container(
                                                                  width: MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      1.0,
                                                                  height: 46.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: Color(
                                                                          0xFFA2A2A2),
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsets.all(FlutterFlowTheme.of(
                                                                            context)
                                                                        .designToken
                                                                        .spacing
                                                                        .sm),
                                                                    child: Text(
                                                                      'Retirar antes de las:${consultarDetalledeExcedenteExcedentesRecord.horaLimiteRetiro?.toString()}',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .headlineMedium
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.oswald(
                                                                              fontWeight: FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                                                                            ),
                                                                            fontSize:
                                                                                20.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Flexible(
                                                                child:
                                                                    Container(
                                                                  width: MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      1.0,
                                                                  height: 46.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: Color(
                                                                          0xFFA2A2A2),
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsets.all(FlutterFlowTheme.of(
                                                                            context)
                                                                        .designToken
                                                                        .spacing
                                                                        .sm),
                                                                    child: Text(
                                                                      'Cantidad Disponible:${consultarDetalledeExcedenteExcedentesRecord.cantidadDisponibles.toString()}',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .headlineMedium
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.oswald(
                                                                              fontWeight: FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                                                                            ),
                                                                            fontSize:
                                                                                20.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Flexible(
                                                                child:
                                                                    Container(
                                                                  width: MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      1.0,
                                                                  height: 46.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: Color(
                                                                          0xFFA2A2A2),
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsets.all(FlutterFlowTheme.of(
                                                                            context)
                                                                        .designToken
                                                                        .spacing
                                                                        .sm),
                                                                    child: Text(
                                                                      'Precio:${consultarDetalledeExcedenteExcedentesRecord.precio.toString()}',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .headlineMedium
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.oswald(
                                                                              fontWeight: FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                                                                            ),
                                                                            fontSize:
                                                                                20.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Flexible(
                                                                child:
                                                                    Container(
                                                                  width: MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      1.0,
                                                                  height: 80.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: Color(
                                                                          0xFFA2A2A2),
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsets.all(FlutterFlowTheme.of(
                                                                            context)
                                                                        .designToken
                                                                        .spacing
                                                                        .sm),
                                                                    child: Text(
                                                                      'Detalle:${consultarDetalledeExcedenteExcedentesRecord.descripcion}',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .headlineMedium
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.oswald(
                                                                              fontWeight: FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                                                                            ),
                                                                            fontSize:
                                                                                20.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ].divide(SizedBox(
                                                            height: 20.0)),
                                                      ),
                                                    ),
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          (FFMainAxisAlignment
                                                                  .end)
                                                              .flutterValue,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      10.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: FFButtonWidget(
                                                            onPressed:
                                                                () async {
                                                              if (consultarDetalledeExcedenteExcedentesRecord
                                                                      .cantidadDisponibles >
                                                                  0) {
                                                                var reservasRecordReference =
                                                                    ReservasRecord
                                                                        .collection
                                                                        .doc();
                                                                await reservasRecordReference
                                                                    .set(
                                                                        createReservasRecordData(
                                                                  excedenteRef:
                                                                      widget
                                                                          .excedenteRef,
                                                                  consumidorRef:
                                                                      currentUserReference,
                                                                  comercioRef:
                                                                      consultarDetalledeExcedenteExcedentesRecord
                                                                          .comercioRef,
                                                                  nombreProducto:
                                                                      consultarDetalledeExcedenteExcedentesRecord
                                                                          .nombre,
                                                                  comercioNombre:
                                                                      consultarDetalledeExcedenteExcedentesRecord
                                                                          .comercioNombre,
                                                                  consumidorNombre:
                                                                      currentUserDisplayName,
                                                                  precioUnitario:
                                                                      consultarDetalledeExcedenteExcedentesRecord
                                                                          .precio,
                                                                  total:
                                                                      consultarDetalledeExcedenteExcedentesRecord
                                                                          .precio,
                                                                  cantidad: 1,
                                                                  estadoReserva:
                                                                      EstadoReserva
                                                                          .Pendiente,
                                                                  horaLimiteRetiro:
                                                                      consultarDetalledeExcedenteExcedentesRecord
                                                                          .horaLimiteRetiro,
                                                                  recordatorioEnviado:
                                                                      false,
                                                                  createdAt:
                                                                      getCurrentTimestamp,
                                                                  updatedAt:
                                                                      getCurrentTimestamp,
                                                                ));
                                                                _model.reservaCreada =
                                                                    ReservasRecord
                                                                        .getDocumentFromData(
                                                                            createReservasRecordData(
                                                                              excedenteRef: widget.excedenteRef,
                                                                              consumidorRef: currentUserReference,
                                                                              comercioRef: consultarDetalledeExcedenteExcedentesRecord.comercioRef,
                                                                              nombreProducto: consultarDetalledeExcedenteExcedentesRecord.nombre,
                                                                              comercioNombre: consultarDetalledeExcedenteExcedentesRecord.comercioNombre,
                                                                              consumidorNombre: currentUserDisplayName,
                                                                              precioUnitario: consultarDetalledeExcedenteExcedentesRecord.precio,
                                                                              total: consultarDetalledeExcedenteExcedentesRecord.precio,
                                                                              cantidad: 1,
                                                                              estadoReserva: EstadoReserva.Pendiente,
                                                                              horaLimiteRetiro: consultarDetalledeExcedenteExcedentesRecord.horaLimiteRetiro,
                                                                              recordatorioEnviado: false,
                                                                              createdAt: getCurrentTimestamp,
                                                                              updatedAt: getCurrentTimestamp,
                                                                            ),
                                                                            reservasRecordReference);

                                                                await widget
                                                                    .excedenteRef!
                                                                    .update({
                                                                  ...mapToFirestore(
                                                                    {
                                                                      'cantidadDisponibles':
                                                                          FieldValue.increment(
                                                                              -1),
                                                                    },
                                                                  ),
                                                                });

                                                                context.goNamed(
                                                                  ReservarUnExcedenteWidget
                                                                      .routeName,
                                                                  queryParameters:
                                                                      {
                                                                    'reservaRef':
                                                                        serializeParam(
                                                                      _model
                                                                          .reservaCreada
                                                                          ?.reference,
                                                                      ParamType
                                                                          .DocumentReference,
                                                                    ),
                                                                  }.withoutNulls,
                                                                );
                                                              } else {
                                                                ScaffoldMessenger.of(
                                                                        context)
                                                                    .showSnackBar(
                                                                  SnackBar(
                                                                    content:
                                                                        Text(
                                                                      'Lo sentimos, este producto ya no tiene unidades disponibles.',
                                                                      style:
                                                                          TextStyle(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                      ),
                                                                    ),
                                                                    duration: Duration(
                                                                        milliseconds:
                                                                            4000),
                                                                    backgroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .secondary,
                                                                  ),
                                                                );
                                                              }

                                                              safeSetState(
                                                                  () {});
                                                            },
                                                            text:
                                                                'Reservar 1 por: ${consultarDetalledeExcedenteExcedentesRecord.precio.toString()}',
                                                            options:
                                                                FFButtonOptions(
                                                              width: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width *
                                                                  0.7,
                                                              height: 44.0,
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              iconPadding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              color: Color(
                                                                  0xFF2A7723),
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .oswald(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .fontStyle,
                                                                        ),
                                                                        color: Colors
                                                                            .white,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .fontStyle,
                                                                      ),
                                                              elevation: 3.0,
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Colors
                                                                    .transparent,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
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
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.safePop();
                          },
                          child: Icon(
                            Icons.arrow_back,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 40.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
