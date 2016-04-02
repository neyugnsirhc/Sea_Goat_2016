//#include "seagoat_vision.h"
#include "opencv2/core/core.hpp"
#include "opencv2/imgproc/imgproc.hpp"
#include "opencv2/highgui/highgui.hpp"
#include "opencv2/opencv.hpp"
#include <iostream>
#include <math.h>
#include <string.h>

using namespace cv;
using namespace std;

//TARGET DEFINITIONS
#define INITIAL_GATE 0
#define MARKERS 1
#define RED_BUOY 2
#define YELLOW_BUOY 3
#define GREEN_BOUY 4
#define MANUVERING_GATE 5
#define BINS 6
#define TORPEDO 7
#define END_GATE 8

//PROTOCAL DEFINITIONS
#define RS232 0
// perhaps others eventually ... 

class vision {
	private:
	//Here goes the constants for: color thresholding, intrinsic camera matrix, object points, distortion Coeff
	VideoCapture vid_cam;

	public:
	//Here goes the member functions: detectMarkers, kltTracker?. detectWorldCoords, drawSquares
	char classification; //classification as defined by the macros
	int x, y; //pixel location
	int theta; //angle relative to the camera frame
	
	//////////////////////
	vision();
	vision(VideoCapture cap);

	void viewVideo(); //plays whatever video stream that is associated with vid_cam
	//void saveVideo(); //saves whatever video stream that is associated with vid_cam
	//void grabandsaveFrame(); //grabs a frame from the video stream and saves it	

	void detect(char classification);
	void transmit(char protocal);	
};
