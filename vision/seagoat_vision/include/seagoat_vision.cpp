#include "seagoat_vision.h"
#include "segmentation.h"

#include "opencv2/core/core.hpp"
#include "opencv2/imgproc/imgproc.hpp"
#include "opencv2/highgui/highgui.hpp"
#include <iostream>
#include <math.h>
#include <string.h>

using namespace cv;
using namespace std;

vision::vision() {
	VideoCapture cam(0);

	if(!cam.isOpened())  // check if we succeeded
		cout << "No camera detected " << endl;
	vid_cam = cam;
}

vision::vision( VideoCapture cam ) {

	if(!cam.isOpened())  // check if we succeeded
		cout << "No camera detected " << endl;

	vid_cam = cam;
}

void vision::viewVideo() {
	for(;;) {
		Mat frame, edges;
		vid_cam.read(frame); // get a new frame from camera
		cvtColor(frame, edges, CV_BGR2GRAY);
		GaussianBlur(edges, edges, Size(7,7), 1.5, 1.5);
		Canny(edges, edges, 0, 30, 3);
		imshow("edges", edges);
		if(waitKey(30) >= 0) break;
	}
}

void vision::detect_marker() {
	//find orange colors
	//detect squares
	

}

void vision::detect_buoy() {
	//algorithm goes here
}

void vision::detect_gate() {

}
