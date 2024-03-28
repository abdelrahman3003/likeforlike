import 'package:flutter/material.dart';

import '../shared/componance.dart';

class Help extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Stack(children: <Widget>[
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'من نحن!!',
                  style: TextStyle(
                    color: defultelogocolor2,
                    fontSize: 30,
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'من المهم الاعتناء بالمريض، وأن يتبعه المريض، لكن ذلك سيحدث في وقت يكون فيه الكثير من العمل والألم. فبالنسبة لأدق التفاصيل، لا يجوز لأحد أن يمارس أي عمل إلا إذا استفاد منه بعض الشيء. ولا تغضب من الألم في التوبيخ في لذة يريد أن يكون من الألم شعرة على أمل أن لا يكون هناك تكاثر. إلا إذا أعمتهم الرغبة، فلا يخرجون، فهم مخطئون في ترك واجباتهم، يلين العقل، أي أن الألم نفسه هو عبء العمل، ويتبعه تعليم الطالب، ولكنها في نفس الوقت تحدث كعمل عظيم وألم. فبالنسبة لأدق التفاصيل، لا يجوز لأحد أن يمارس أي عمل إلا إذا استفاد منه بعض الشيء. ولا تغضب من الألم في التوبيخ في لذة يريد أن يكون من الألم شعرة على أمل أن لا يكون هناك تكاثر. إلا إذا أعمتهم الشهوة، فلا يخرجون، فإنهم مخطئون من تركوا واجباتهم، يلين العقل، أي رب العمال. فبالنسبة لأدق التفاصيل، لا يجوز لأحد أن يمارس أي عمل إلا إذا استفاد منه بعض الشيء. او اثنين.,',
                  maxLines: 100,
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,
                ),
              )
            ],
          )
        ],
      ),
    ]));
  }
}
