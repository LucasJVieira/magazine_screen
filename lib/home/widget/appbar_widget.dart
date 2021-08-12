import 'package:flutter/material.dart';
import 'package:magalu_screen/core/core.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget()
      : super(
            preferredSize: Size.fromHeight(76),
            child: Container(
              height: 76,
              color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(AppImages.logo))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child:
                            Text("Ofertas do dia", style: AppTextStyles.oferta),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 3,
                        width: 392,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(AppImages.linha))),
                      ),
                    ],
                  ),
                ],
              ),
            ));
}
