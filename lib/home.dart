import 'dart:async';
import 'package:flutter/material.dart';
import 'package:process_mapping/components/app_button.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _isStop = false;
  bool _isStart = false;
  bool _isStartTransp = false;
  bool _isStartInsp = false;
  bool _isStartEstm = false;
  bool _isStartEspl = false;
  bool _isStartEspp = false;
  bool _isStartPros = false;
  bool _isStartEstp = false;
  String _stopwatchText = '00:00:00';
  String _stopwatchTextTransp = '00:00:00';
  String _stopwatchTextInsp = '00:00:00';
  String _stopwatchTextEstm = '00:00:00';
  String _stopwatchTextEspl = '00:00:00';
  String _stopwatchTextEspp = '00:00:00';
  String _stopwatchTextPros = '00:00:00';
  String _stopwatchTextEstp = '00:00:00';
  final _stopWatch = new Stopwatch();
  final _stopWatchTransp = new Stopwatch();
  final _stopWatchInsp = new Stopwatch();
  final _stopWatchEstm = new Stopwatch();
  final _stopWatchEspl = new Stopwatch();
  final _stopWatchEspp = new Stopwatch();
  final _stopWatchPros = new Stopwatch();
  final _stopWatchEstp = new Stopwatch();
  final _timeout = const Duration(seconds: 1);

  void _startTimeout() {
    new Timer(_timeout, _handleTimeout);
  }

  void _startTimeoutTransp() {
    new Timer(_timeout, _handleTimeoutTransp);
  }

  void _startTimeoutInsp() {
    new Timer(_timeout, _handleTimeoutInsp);
  }

  void _startTimeoutEstm() {
    new Timer(_timeout, _handleTimeoutEstm);
  }

  void _startTimeoutEspl() {
    new Timer(_timeout, _handleTimeoutEspl);
  }

  void _startTimeoutEspp() {
    new Timer(_timeout, _handleTimeoutEspp);
  }

  void _startTimeoutPros() {
    new Timer(_timeout, _handleTimeoutPros);
  }

  void _startTimeoutEstp() {
    new Timer(_timeout, _handleTimeoutEstp);
  }

  void _handleTimeout() {
    if (_stopWatch.isRunning) {
      _startTimeout();
    }
    setState(() {
      _setStopwatchText();
    });
  }

  void _handleTimeoutTransp() {
    if (_stopWatchTransp.isRunning) {
      _startTimeoutTransp();
    }
    setState(() {
      _setStopwatchTextTransp();
    });
  }

  void _handleTimeoutInsp() {
    if (_stopWatchInsp.isRunning) {
      _startTimeoutInsp();
    }
    setState(() {
      _setStopwatchTextInsp();
    });
  }

  void _handleTimeoutEstm() {
    if (_stopWatchEstm.isRunning) {
      _startTimeoutEstm();
    }
    setState(() {
      _setStopwatchTextEstm();
    });
  }

  void _handleTimeoutEspl() {
    if (_stopWatchEspl.isRunning) {
      _startTimeoutEspl();
    }
    setState(() {
      _setStopwatchTextEspl();
    });
  }

  void _handleTimeoutEspp() {
    if (_stopWatchEspp.isRunning) {
      _startTimeoutEspp();
    }
    setState(() {
      _setStopwatchTextEspp();
    });
  }

  void _handleTimeoutPros() {
    if (_stopWatchPros.isRunning) {
      _startTimeoutPros();
    }
    setState(() {
      _setStopwatchTextPros();
    });
  }

  void _handleTimeoutEstp() {
    if (_stopWatchEstp.isRunning) {
      _startTimeoutEstp();
    }
    setState(() {
      _setStopwatchTextEstp();
    });
  }

  void _startStopButtonPressed() {
    setState(() {
      if (_stopWatch.isRunning) {
        _isStart = true;
        _stopWatch.stop();
      } else {
        _isStart = false;
        _stopWatch.start();
        _startTimeout();
      }
    });
  }

  void _resetButtonPressed() {
    if (_stopWatch.isRunning) {
      _startStopButtonPressed();
    }
    setState(() {
      _stopWatch.reset();
      _setStopwatchText();
    });
  }

  void _setStopwatchText() {
    _stopwatchText = _stopWatch.elapsed.inHours.toString().padLeft(2, '0') + ':' + (_stopWatch.elapsed.inMinutes % 60).toString().padLeft(2, '0') + ':' + (_stopWatch.elapsed.inSeconds % 60).toString().padLeft(2, '0');
  }

  void _setStopwatchTextTransp() {
    _stopwatchTextTransp = _stopWatchTransp.elapsed.inHours.toString().padLeft(2, '0') + ':' + (_stopWatchTransp.elapsed.inMinutes % 60).toString().padLeft(2, '0') + ':' + (_stopWatchTransp.elapsed.inSeconds % 60).toString().padLeft(2, '0');
  }

  void _setStopwatchTextInsp() {
    _stopwatchTextInsp = _stopWatchInsp.elapsed.inHours.toString().padLeft(2, '0') + ':' + (_stopWatchInsp.elapsed.inMinutes % 60).toString().padLeft(2, '0') + ':' + (_stopWatchInsp.elapsed.inSeconds % 60).toString().padLeft(2, '0');
  }

  void _setStopwatchTextEstm() {
    _stopwatchTextEstm = _stopWatchEstm.elapsed.inHours.toString().padLeft(2, '0') + ':' + (_stopWatchEstm.elapsed.inMinutes % 60).toString().padLeft(2, '0') + ':' + (_stopWatchEstm.elapsed.inSeconds % 60).toString().padLeft(2, '0');
  }

  void _setStopwatchTextEspl() {
    _stopwatchTextEspl = _stopWatchEspl.elapsed.inHours.toString().padLeft(2, '0') + ':' + (_stopWatchEspl.elapsed.inMinutes % 60).toString().padLeft(2, '0') + ':' + (_stopWatchEspl.elapsed.inSeconds % 60).toString().padLeft(2, '0');
  }

  void _setStopwatchTextEspp() {
    _stopwatchTextEspp = _stopWatchEspp.elapsed.inHours.toString().padLeft(2, '0') + ':' + (_stopWatchEspp.elapsed.inMinutes % 60).toString().padLeft(2, '0') + ':' + (_stopWatchEspp.elapsed.inSeconds % 60).toString().padLeft(2, '0');
  }

  void _setStopwatchTextPros() {
    _stopwatchTextPros = _stopWatchPros.elapsed.inHours.toString().padLeft(2, '0') + ':' + (_stopWatchPros.elapsed.inMinutes % 60).toString().padLeft(2, '0') + ':' + (_stopWatchPros.elapsed.inSeconds % 60).toString().padLeft(2, '0');
  }

  void _setStopwatchTextEstp() {
    _stopwatchTextEstp = _stopWatchEstp.elapsed.inHours.toString().padLeft(2, '0') + ':' + (_stopWatchEstp.elapsed.inMinutes % 60).toString().padLeft(2, '0') + ':' + (_stopWatchEstp.elapsed.inSeconds % 60).toString().padLeft(2, '0');
  }

  _stopAllStopwatch() {
    _stopWatch.stop();
    _stopWatchTransp.stop();
    _stopWatchInsp.stop();
    _stopWatchEstm.stop();
    _stopWatchEspl.stop();
    _stopWatchEspp.stop();
    _stopWatchPros.stop();
    _stopWatchEstp.stop();
  }

  setFalse(int position) {
    setState(() {
      if (position != 0) _isStartTransp = false;
      if (position != 1) _isStartInsp = false;
      if (position != 2) _isStartEstm = false;
      if (position != 3) _isStartEspl = false;
      if (position != 4) _isStartEspp = false;
      if (position != 5) _isStartPros = false;
      if (position != 6) _isStartEstp = false;
    });
  }

  _resetAll() {
    _stopWatch.reset();
    _setStopwatchText();
    _stopWatchTransp.reset();
    _setStopwatchTextTransp();
    _stopWatchInsp.reset();
    _setStopwatchTextInsp();
    _stopWatchEstm.reset();
    _setStopwatchTextEstm();
    _stopWatchEspl.reset();
    _setStopwatchTextEspl();
    _stopWatchEspp.reset();
    _setStopwatchTextEspp();
    _stopWatchPros.reset();
    _setStopwatchTextPros();
    _stopWatchEstp.reset();
    _setStopwatchTextEstp();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var widthButton = (width / 2) - 4;
    return Scaffold(
      appBar: AppBar(
        title: Text('Mapeador de Processos'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 8, top: 5),
              child: buttons(widthButton),
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  border: Border.all(color: Colors.blueAccent),
                  borderRadius: BorderRadius.all(Radius.circular(200)),
                ),
                width: width / 2,
                child: Center(
                  child: Text(
                    _stopwatchText,
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: charts(),
            )
          ],
        ),
      ),
    );
  }

  Widget buttons(double widthButton) {
    return Column(
      children: [
        Row(
          children: [
            appButton('Transporte', _stopwatchTextTransp, () {
              _stopAllStopwatch();
              setFalse(0);
              setState(() {
                if (_isStartTransp == true)
                  _isStartTransp = false;
                else {
                  _isStartTransp = true;
                  _isStart = true;
                  _stopWatchTransp.start();
                  _startTimeoutTransp();
                  _stopWatch.start();
                  _startTimeout();
                }
              });
            }, widthButton, Icons.circle_outlined, false, _isStartTransp),
            appButton('Inspeção', _stopwatchTextInsp, () {
              _stopAllStopwatch();
              setFalse(1);
              setState(() {
                if (_isStartInsp == true)
                  _isStartInsp = false;
                else {
                  _isStartInsp = true;
                  _isStart = true;
                  _stopWatchInsp.start();
                  _startTimeoutInsp();
                  _stopWatch.start();
                  _startTimeout();
                }
              });
            }, widthButton, Icons.crop_square, false, _isStartInsp),
          ],
        ),
        Row(
          children: [
            appButton('Estoque Mat. Prima', _stopwatchTextEstm, () {
              _stopAllStopwatch();
              setFalse(2);
              setState(() {
                if (_isStartEstm == true)
                  _isStartEstm = false;
                else {
                  _isStartEstm = true;
                  _isStart = true;
                  _stopWatchEstm.start();
                  _startTimeoutEstm();
                  _stopWatch.start();
                  _startTimeout();
                }
              });
            }, widthButton, Icons.keyboard_arrow_up_sharp, false, _isStartEstm),
            appButton('Espera de lotes ', _stopwatchTextEspl, () {
              _stopAllStopwatch();
              setFalse(3);
              setState(() {
                if (_isStartEspl == true)
                  _isStartEspl = false;
                else {
                  _isStartEspl = true;
                  _isStart = true;
                  _stopWatchEspl.start();
                  _startTimeoutEspl();
                  _stopWatch.start();
                  _startTimeout();
                }
              });
            }, widthButton, Icons.star_border_purple500_outlined, false, _isStartEspl),
          ],
        ),
        Row(
          children: [
            appButton('Espera Processo', _stopwatchTextEspp, () {
              _stopAllStopwatch();
              setFalse(4);
              setState(() {
                if (_isStartEspp == true)
                  _isStartEspp = false;
                else {
                  _isStartEspp = true;
                  _isStart = true;
                  _stopWatchEspp.start();
                  _startTimeoutEspp();
                  _stopWatch.start();
                  _startTimeout();
                }
              });
            }, widthButton, Icons.keyboard_arrow_down, false, _isStartEspp),
            appButton('Processamento', _stopwatchTextPros, () {
              _stopAllStopwatch();
              setFalse(5);
              setState(() {
                if (_isStartPros == true)
                  _isStartPros = false;
                else {
                  _isStartPros = true;
                  _isStart = true;
                  _stopWatchPros.start();
                  _startTimeoutPros();
                  _stopWatch.start();
                  _startTimeout();
                }
              });
            }, widthButton, Icons.all_out, false, _isStartPros),
          ],
        ),
        Row(
          children: [
            appButton('Estoque Pa', _stopwatchTextEstp, () {
              _stopAllStopwatch();
              setFalse(6);
              setState(() {
                if (_isStartEstp == true)
                  _isStartEstp = false;
                else {
                  _isStartEstp = true;
                  _isStart = true;
                  _stopWatchEstp.start();
                  _startTimeoutEstp();
                  _stopWatch.start();
                  _startTimeout();
                }
              });
            }, widthButton, Icons.keyboard_arrow_down, false, _isStartEstp),
            appButton(_isStop ? 'Resetar' : 'Finalizar', '', () {
              _stopAllStopwatch();
              setFalse(7);
              if (_isStop == true) {
                _resetAll();
                setState(() {
                  _isStop = false;
                });
              } else {
                setState(() {
                  _isStop = true;
                });
              }
            }, widthButton, Icons.clear, true, true),
          ],
        ),
      ],
    );
  }

  Widget charts() {
    return Column(
      children: [
        Center(
          child: SfCircularChart(
            legend: Legend(isVisible: true),
            palette: <Color>[Colors.red, Colors.green],
            series: <PieSeries<_PieData, String>>[
              PieSeries<_PieData, String>(
                dataSource: [
                  _PieData('Não Agrega Valor', _stopWatchTransp.elapsedMilliseconds + _stopWatchInsp.elapsedMilliseconds + _stopWatchEstm.elapsedMilliseconds + _stopWatchEspl.elapsedMilliseconds + _stopWatchEspp.elapsedMilliseconds + _stopWatchEstp.elapsedMilliseconds),
                  _PieData('Agrega Valor', _stopWatchPros.elapsedMilliseconds),
                ],
                xValueMapper: (_PieData data, _) => data.xData,
                yValueMapper: (_PieData data, _) => data.yData,
                dataLabelMapper: (_PieData data, _) => data.text,
                // dataLabelSettings: DataLabelSettings(isVisible: true),
              ),
            ],
          ),
        ),
        Center(
          child: SfCircularChart(
            legend: Legend(isVisible: true),
            series: <PieSeries<_PieData, String>>[
              PieSeries<_PieData, String>(
                dataSource: [
                  _PieData('Transporte', _stopWatchTransp.elapsedMilliseconds, _stopwatchTextTransp),
                  _PieData('Inspeção', _stopWatchInsp.elapsedMilliseconds, _stopwatchTextInsp),
                  _PieData('Estoque Mat. Prima', _stopWatchEstm.elapsedMilliseconds, _stopwatchTextEstm),
                  _PieData('Espera de Lotes', _stopWatchEspl.elapsedMilliseconds, _stopwatchTextEspl),
                  _PieData('Espera de Processos', _stopWatchEspp.elapsedMilliseconds, _stopwatchTextEspp),
                  _PieData('Processamentos', _stopWatchPros.elapsedMilliseconds, _stopwatchTextPros),
                  _PieData('Estoque Pa', _stopWatchEstp.elapsedMilliseconds, _stopwatchTextEstp),
                ],
                xValueMapper: (_PieData data, _) => data.xData,
                yValueMapper: (_PieData data, _) => data.yData,
                dataLabelMapper: (_PieData data, _) => data.text,
                dataLabelSettings: DataLabelSettings(isVisible: true),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _PieData {
  _PieData(this.xData, this.yData, [this.text]);

  final String xData;
  final num yData;
  final String? text;
}
