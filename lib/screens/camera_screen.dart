
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';



 List<CameraDescription> cameras = [];

class CameraScreen extends StatefulWidget {
  const CameraScreen({super.key});

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {

  late CameraController _cameraController;

  late Future<void> _cameraValue;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _cameraController = CameraController(cameras[0], ResolutionPreset.high);

    _cameraValue = _cameraController.initialize();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FutureBuilder(
            future: _cameraValue,
             builder: (context, snapshot) {
            if(snapshot.connectionState == ConnectionState.done){
              return CameraPreview(_cameraController);
            }
            else
            {
              return Center(child: CircularProgressIndicator(),);
            }
          },
          ),
          Positioned(
            bottom: 0.0,
            child: Container(
              color: Colors.black,
              width: MediaQuery.sizeOf(context).width,
              child: Column(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.flash_off, color: Colors.white,size: 28,)),
                    IconButton(onPressed: (){}, icon: Icon(Icons.panorama_fish_eye, color: Colors.white,size: 70,)),
                    IconButton(onPressed: (){}, icon: Icon(Icons.flip_camera_ios, color: Colors.white,size: 28,))
                  ],)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}