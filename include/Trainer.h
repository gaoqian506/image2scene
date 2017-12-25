#ifndef __GG_TRAINER__HEADER__
#define __GG_TRAINER__HEADER__

#include "opencv2/core/core.hpp"
#include "caffe/net.hpp"

namespace gg {



class Trainer {

public:
	Trainer();
	void train();

private:

	void get_image();
	//void set_net_input();
	//void train();


	cv::Mat m_image;
	caffe::Net<float>* m_net;

};


} // namespace gg



#endif //__GG_TRAINER__HEADER__