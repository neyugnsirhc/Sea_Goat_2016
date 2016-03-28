#include "seagoat_vision.h"
#include "opencv2/core/core.hpp"
#include "opencv2/imgproc/imgproc.hpp"
#include "opencv2/highgui/highgui.hpp"#include <iostream>
#include <math.h>
#include <string.h>

using namespace cv;
using namespace std;

vision::vision() {
	VideoCapture cam;

	if(!vid_cam.isOpened())  // check if we succeeded
		return -1;

	vid_cam = cam;
}

vision::vision( VideoCapture cap ) {

	if(!cap.isOpened())  // check if we succeeded
		return -1;

	vid_cam = cap;
}

void vision::viewVideo() {
	for(;;) {
		Mat frame;
		vid_cam >> frame; // get a new frame from camera
		cvtColor(frame, edges, CV_BGR2GRAY);
		GaussianBlur(edges, edges, Size(7,7), 1.5, 1.5);
		Canny(edges, edges, 0, 30, 3);
		imshow("edges", edges);
		if(waitKey(30) >= 0) break;
	}
}
