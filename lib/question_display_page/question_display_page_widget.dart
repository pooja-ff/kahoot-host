import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'question_display_page_model.dart';
export 'question_display_page_model.dart';

class QuestionDisplayPageWidget extends StatefulWidget {
  const QuestionDisplayPageWidget({Key? key}) : super(key: key);

  @override
  _QuestionDisplayPageWidgetState createState() =>
      _QuestionDisplayPageWidgetState();
}

class _QuestionDisplayPageWidgetState extends State<QuestionDisplayPageWidget> {
  late QuestionDisplayPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QuestionDisplayPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.timerController.onExecute.add(StopWatchExecute.start);
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<GamesRecord>(
      stream: GamesRecord.getDocument(FFAppState().currentGame!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).primary,
              ),
            ),
          );
        }
        final questionDisplayPageGamesRecord = snapshot.data!;
        return Title(
            title: 'QuestionDisplayPage',
            color: FlutterFlowTheme.of(context).primary,
            child: GestureDetector(
              onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
              child: Scaffold(
                key: scaffoldKey,
                backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
                body: SafeArea(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Stack(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.7,
                            height: MediaQuery.of(context).size.height * 0.6,
                            decoration: BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.05),
                                  child: Text(
                                    questionDisplayPageGamesRecord.questionList!
                                        .toList()[questionDisplayPageGamesRecord
                                            .currentQues!]
                                        .questionDesc!,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 50.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ),
                                if (questionDisplayPageGamesRecord.questionList!
                                            .toList()[
                                                questionDisplayPageGamesRecord
                                                    .currentQues!]
                                            .image !=
                                        null &&
                                    questionDisplayPageGamesRecord.questionList!
                                            .toList()[
                                                questionDisplayPageGamesRecord
                                                    .currentQues!]
                                            .image !=
                                        '')
                                  Image.asset(
                                    'assets/images/designLibrary_splash_5@2x.jpg',
                                    width: double.infinity,
                                    height: MediaQuery.of(context).size.height *
                                        0.4,
                                    fit: BoxFit.cover,
                                  ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 10.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            24.0, 24.0, 24.0, 24.0),
                                        child: FlutterFlowTimer(
                                          initialTime: _model.timerMilliseconds,
                                          getDisplayTime: (value) =>
                                              StopWatchTimer.getDisplayTime(
                                            value,
                                            hours: false,
                                            minute: false,
                                            milliSecond: false,
                                          ),
                                          timer: _model.timerController,
                                          updateStateInterval:
                                              Duration(milliseconds: 1000),
                                          onChanged: (value, displayTime,
                                              shouldUpdate) {
                                            _model.timerMilliseconds = value;
                                            _model.timerValue = displayTime;
                                            if (shouldUpdate) setState(() {});
                                          },
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                fontSize: 50.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20.0, 20.0, 0.0, 20.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 10.0, 10.0, 10.0),
                                          child: Text(
                                            '${questionDisplayPageGamesRecord.answersCount?.toString()} Answers',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 30.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                if (questionDisplayPageGamesRecord
                                        .currentQues! <
                                    (questionDisplayPageGamesRecord
                                            .questionList!
                                            .toList()
                                            .length -
                                        1))
                                  FFButtonWidget(
                                    onPressed: () async {
                                      final gamesUpdateData1 =
                                          createGamesRecordData(
                                        lastAskTime:
                                            functions.getCurrentTimeInMs(),
                                      );
                                      await questionDisplayPageGamesRecord
                                          .reference
                                          .update(gamesUpdateData1);
                                      if (questionDisplayPageGamesRecord
                                              .currentQues! <
                                          (questionDisplayPageGamesRecord
                                                  .questionList!
                                                  .toList()
                                                  .length -
                                              1)) {
                                        final gamesUpdateData2 = {
                                          'current_ques':
                                              FieldValue.increment(1),
                                        };
                                        await questionDisplayPageGamesRecord
                                            .reference
                                            .update(gamesUpdateData2);

                                        final gamesUpdateData3 =
                                            createGamesRecordData(
                                          answersCount: 0,
                                        );
                                        await questionDisplayPageGamesRecord
                                            .reference
                                            .update(gamesUpdateData3);
                                        _model.timerController.onExecute
                                            .add(StopWatchExecute.reset);

                                        _model.timerController.onExecute
                                            .add(StopWatchExecute.start);
                                      }
                                    },
                                    text: 'NEXT QUESTION',
                                    options: FFButtonOptions(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20.0, 20.0, 20.0, 20.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                            fontSize: 30.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                if (questionDisplayPageGamesRecord
                                        .currentQues ==
                                    (questionDisplayPageGamesRecord
                                            .questionList!
                                            .toList()
                                            .length -
                                        1))
                                  FFButtonWidget(
                                    onPressed: () async {
                                      context.pushNamed('WinnersPage');
                                    },
                                    text: 'Show Results',
                                    options: FFButtonOptions(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20.0, 20.0, 20.0, 20.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                            fontSize: 30.0,
                                          ),
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        flex: 1,
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 1.0),
                          child: Container(
                            width: double.infinity,
                            height: MediaQuery.of(context).size.height * 0.4,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Builder(
                              builder: (context) {
                                final optionList = functions
                                    .getOptionList(
                                        questionDisplayPageGamesRecord
                                            .questionList!
                                            .toList(),
                                        questionDisplayPageGamesRecord
                                            .currentQues!)
                                    .toList();
                                return MasonryGridView.count(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 10.0,
                                  mainAxisSpacing: 10.0,
                                  itemCount: optionList.length,
                                  itemBuilder: (context, optionListIndex) {
                                    final optionListItem =
                                        optionList[optionListIndex];
                                    return Container(
                                      width: 200.0,
                                      height: 200.0,
                                      decoration: BoxDecoration(
                                        color: () {
                                          if (optionListIndex == 0) {
                                            return Color(0xFFBF2242);
                                          } else if (optionListIndex == 1) {
                                            return Color(0xFF2F67BF);
                                          } else if (optionListIndex == 2) {
                                            return Color(0xFFCA9E3A);
                                          } else {
                                            return Color(0xFF4C9A2C);
                                          }
                                        }(),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            optionListItem,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  fontSize: 30.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ));
      },
    );
  }
}
