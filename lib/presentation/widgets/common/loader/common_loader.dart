import 'package:flutter/material.dart';
import 'package:grocery/presentation/widgets/common/loader/loader.dart';
import 'package:grocery/utils/responsive/responsive.dart';



/// [CommonLoader] to display the loader.
/// it will cover the entire available screen.
class CommonLoader extends StatelessWidget {
  /// [size] to set the size of the loader.
  /// it defaults to [75.s] if not provided.
  final double? size;

  const CommonLoader({
    Key? key,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.black.withOpacity(0.8),
        child: Center(
          child: Loader(
            size: size ?? 75.s,
          ),
        ),
      ),
    );
  }
}
