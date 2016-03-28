class vision {
private:
//Here goes the constants for: color thresholding, intrinsic camera matrix, object points, distortion Coeff
VideoCapture vid_cam, float theta, int x, int y;

public:
//Here goes the member functions: detectMarkers, kltTracker?. detectWorldCoords, drawSquares
vision();
vision(VideoCapture cap);

void viewVideo();
};
