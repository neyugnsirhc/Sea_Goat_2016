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

class vision {
private:
//Here goes the constants for: color thresholding, intrinsic camera matrix, object points, distortion Coeff

public:
//Here goes the member functions: detectMarkers, kltTracker?. detectWorldCoords, drawSquares
VideoCapture vid_cam;
float theta;
int x;
int y;

vision();
vision(VideoCapture cap);

void viewVideo();
};
