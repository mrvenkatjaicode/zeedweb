// SizedBox(
//                 height: 800,
//                 child: ListView.builder(
//                     //shrinkWrap: true,
//                     // physics: isListScroll
//                     //     ? const AlwaysScrollableScrollPhysics()
//                     //     : const NeverScrollableScrollPhysics(),
//                     controller: scrollControllerList,
//                     itemCount: 3,
//                     itemBuilder: (context, index) {
//                       if (index == 0) {
//                         return Container(color: Colors.orange, height: 0);
//                       }
//                       if (index == 1) {
//                         return SizedBox(
//                           height: 1000,
//                           child: Stack(
//                             children: [
//                               Align(
//                                 alignment: Alignment.centerLeft,
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Padding(
//                                         padding: const EdgeInsets.fromLTRB(
//                                             24, 16, 16, 16),
//                                         child: AnimatedDefaultTextStyle(
//                                             style: textOneActive
//                                                 ? textStyleActive
//                                                 : textStyleInactive,
//                                             duration: textAnimateDuration,
//                                             child: Text(imageOne))),
//                                     Padding(
//                                         padding: const EdgeInsets.fromLTRB(
//                                             24, 16, 16, 16),
//                                         child: AnimatedDefaultTextStyle(
//                                             style: textTwoActive
//                                                 ? textStyleActive
//                                                 : textStyleInactive,
//                                             duration: textAnimateDuration,
//                                             child: Text(imageTwo))),
//                                     Padding(
//                                         padding: const EdgeInsets.fromLTRB(
//                                             24, 16, 16, 16),
//                                         child: AnimatedDefaultTextStyle(
//                                             style: textThreeActive
//                                                 ? textStyleActive
//                                                 : textStyleInactive,
//                                             duration: textAnimateDuration,
//                                             child: Text(imageThree))),
//                                   ],
//                                 ),
//                               ),
//                               Align(
//                                 alignment: Alignment.centerRight,
//                                 widthFactor: screenSize.width,
//                                 child: SingleChildScrollView(
//                                   controller: scrollControllerImage,
//                                   physics: isImageScroll
//                                       ? const AlwaysScrollableScrollPhysics()
//                                       : const NeverScrollableScrollPhysics(),
//                                   child: Container(
//                                     color: Colors.red,
//                                     // width: screenSize.width,
//                                     child: Column(
//                                       children: [
//                                         Image.asset('assets/011.png',
//                                             height: screenSize.height),
//                                         Image.asset('assets/011.png',
//                                             height: screenSize.height),
//                                         Image.asset('assets/011.png',
//                                             height: screenSize.height),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         );
//                       }
//                       if (index == 2) {
//                         return Container(color: Colors.green, height: 0);
//                       }
//                       if (index == 3) {
//                         return Container(color: Colors.blue, height: 0);
//                       }
//                     }),
//               ),