/*
   Copyright [2021] [Tinkler]

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.

*/
import 'package:flame/game.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:tank/game/tank_game.dart';
import 'package:tank/widget/joypad.dart';
import 'package:tank/widget/pad_button.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  final TankGame game = TankGame();
  runApp(Directionality(
      textDirection: TextDirection.ltr,
      child: Stack(
        children: [
          GameWidget(game: game),
          Column(
            children: [
              const Spacer(),
              Row(
                children: [
                  const SizedBox(
                    width: 40,
                  ),
                  PadButton(onTap: game.onButtonTap),
                  const Spacer(),
                  PadButton(onTap: game.onButtonTap),
                  const SizedBox(
                    width: 40,
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 40,
                  ),
                  Joypad(
                      onChange: (Offset delta) =>
                          game.onLeftJoypadChange(delta)),
                  const Spacer(),
                  Joypad(
                      onChange: (Offset delta) =>
                          game.onRightJoypadChange(delta)),
                  const SizedBox(
                    width: 48,
                  )
                ],
              ),
              const SizedBox(
                height: 24,
              )
            ],
          )
        ],
      )));
}
