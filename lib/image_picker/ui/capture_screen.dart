import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:statemanagement/image_picker/bloc/imagepicker_bloc.dart';

class CaptureScreen extends StatelessWidget {
  const CaptureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Capture screen'),
          centerTitle: true,
        ),
        body: BlocBuilder<ImagepickerBloc, ImagepickerState>(
          builder: (context, state) {
            if (state.image == null) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      BlocProvider.of<ImagepickerBloc>(context)
                          .add(PickImageFromCamera());
                    },
                    child: const Center(
                      child: Icon(
                        Icons.camera,
                        size: 50,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      BlocProvider.of<ImagepickerBloc>(context)
                          .add(PickImageFromGallery());
                    },
                    child: const Center(
                      child: Icon(
                        Icons.file_copy,
                        size: 50,
                      ),
                    ),
                  ),
                ],
              );
            } else {
              return Image.file(File(state.image!.path.toString()));
            }
          },
        ));
  }
}
