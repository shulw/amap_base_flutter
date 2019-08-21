import 'dart:convert';
import 'dart:ui';

import 'package:amap_base/amap_base.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';



class CircleOptions{
  ///颜色
  Color fillColor;
  ///边框颜色
  Color strokeColor;
  ///边框长度
  num strokeWidth;
  ///大小
  num radius;
  ///中心点
  LatLng center;
  CircleOptions({
    @required
    this.center,
    this.fillColor,
    this.strokeColor,
    this.strokeWidth,
    this.radius
  });

  Map<String, Object> toJson() {
    return {
      'center': center,
      'fillColor': fillColor.value.toRadixString(16),
      'strokeColor': strokeColor.value.toRadixString(16),
      'strokeWidth': strokeWidth,
      'radius': radius
    };
  }
  String toJsonString() => jsonEncode(toJson());
}