import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GamepadIcon extends StatelessWidget {
  final Color? iconColor;
  final svgString = '''
  <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
  <defs>
  <linearGradient id="paint0_linear" x1="10" y1="0" x2="10" y2="20" gradientUnits="userSpaceOnUse">
  <stop stop-color="#FF0000"/>
  <stop offset="1" stop-color="#FF9900"/>
  </linearGradient>
  </defs>
  <path fill-rule="evenodd" clip-rule="evenodd" d="M13.164 4.08252C13.4791 4.08684 13.7949 4.09117 14.1119 4.09441C17.5172 4.09441 20 6.52216 20 9.87476V14.1811C20 17.5337 17.5172 19.9615 14.1119 19.9615C12.7478 19.9904 11.3837 20 10.0098 20C8.63592 20 7.25221 19.9904 5.88813 19.9615C2.48283 19.9615 0 17.5337 0 14.1811V9.87476C0 6.52216 2.48283 4.09441 5.89794 4.09441C7.18351 4.07514 8.49853 4.05588 9.83317 4.05588V3.8921C9.83317 3.22736 9.2738 2.68786 8.60648 2.68786H7.63494C6.52601 2.68786 5.62316 1.80154 5.62316 0.722543C5.62316 0.327553 5.95682 0 6.35918 0C6.77134 0 7.09519 0.327553 7.09519 0.722543C7.09519 1.01156 7.34053 1.24277 7.63494 1.24277H8.60648C10.0883 1.25241 11.2954 2.43738 11.3052 3.88247V4.06551C11.9239 4.06551 12.5425 4.074 13.164 4.08252ZM8.85182 12.7457H7.82139V13.7669C7.82139 14.1618 7.48773 14.4894 7.08538 14.4894C6.67321 14.4894 6.34936 14.1618 6.34936 13.7669V12.7457H5.30913C4.90677 12.7457 4.57311 12.4277 4.57311 12.0231C4.57311 11.6281 4.90677 11.3006 5.30913 11.3006H6.34936V10.289C6.34936 9.89403 6.67321 9.56647 7.08538 9.56647C7.48773 9.56647 7.82139 9.89403 7.82139 10.289V11.3006H8.85182C9.25417 11.3006 9.58783 11.6281 9.58783 12.0231C9.58783 12.4277 9.25417 12.7457 8.85182 12.7457ZM13.0226 11.1175H13.1207C13.5231 11.1175 13.8567 10.7996 13.8567 10.395C13.8567 10 13.5231 9.67245 13.1207 9.67245H13.0226C12.6104 9.67245 12.2866 10 12.2866 10.395C12.2866 10.7996 12.6104 11.1175 13.0226 11.1175ZM14.7007 14.4316H14.7988C15.2012 14.4316 15.5348 14.1137 15.5348 13.7091C15.5348 13.3141 15.2012 12.9865 14.7988 12.9865H14.7007C14.2875 12.9865 13.9647 13.3141 13.9647 13.7091C13.9647 14.1137 14.2875 14.4316 14.7007 14.4316Z" fill="url(#paint0_linear)"/>
  </svg>
  ''';
  GamepadIcon({this.iconColor});
  @override
  Widget build(BuildContext context) {
    return SvgPicture.string(
      svgString,
      color: iconColor,
    );
  }
}