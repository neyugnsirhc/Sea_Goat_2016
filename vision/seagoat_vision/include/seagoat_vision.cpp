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

	classification = 0;
	x = 0;
	y = 0;
	theta = 0;
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

//will add later
/*void saveVideo() { //saves whatever video stream that is associated with vid_cam
		for(;;) {
		Mat frame, edges;
		vid_cam.read(frame); // get a new frame from camera
		cvtColor(frame, edges, CV_BGR2GRAY);
		GaussianBlur(edges, edges, Size(7,7), 1.5, 1.5);
		Canny(edges, edges, 0, 30, 3);
		imwrite("edges", edges);
		if(waitKey(30) >= 0) break;
	}
}*/

void vision::detect(char classification) {
	Mat frame;	

	if (classification == 0) { 
		cout << "Searching for Initial gate" << endl;
	} else if(classification == 1) {
		cout << "Searching for Markers" << endl;
		//grab frame
		vid_cam.read(frame);	
	
		//Call your segmentation
			
		//run your detector
		//run CV algorithm
		//save to object members
		
	} else if(classification == 2) {
		cout << "Searching for red buoy" << endl;
	} else if(classification == 3) {
		cout << "Searching for yellow buoy" << endl;
	} else if(classification == 4) {
		cout << "Searching for green buoy" << endl;
	} else if(classification == 5) {
		cout << "Searching for manuvering gate" << endl;
	} else if(classification == 6) {
		cout << "Searching for bins" << endl;
	} else if(classification == 7) {
		cout << "Searching for torpedo target" << endl;
	} else if(classification == 8) {
		cout << "Searching for end gate" << endl;
	} else {
		cout << "Error: No such target classification" << endl;
	}
}

void vision::transmit(char protocal) {
	cout << "Transmitting message over: " << (int) protocal << endl;
}







