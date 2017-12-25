#include "Trainer.h"

#include "opencv2/highgui/highgui.hpp"
#include <iostream>



namespace gg {

Trainer::Trainer() {

	m_net = new caffe::Net<float>("net.pt", caffe::TRAIN);
}	

void Trainer::train() {

	std::cout << "Entering Trainer::train" << std::endl;
	//while (true) {
	for (int i = 0; i < 10; i++) {
		std::cout << "reading image(" << i << ")" << std::endl;
		get_image();

		//set_net_input();
		//train();
		//read_image();
		//net.push_image();
		//net.train();
	}

}	

void Trainer::get_image() { 
	std::cout << "read image------" << std::endl;

	m_image = cv::imread("data/images/001.jpg");

}


} // namespace gg	