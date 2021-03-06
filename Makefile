

INCLUDE_DIR = -Iinclude -I/home/gq/Documents/github/caffe/include
LIBS = -lopencv_core -lopencv_highgui -lcaffe -lboost_system
LIB_DIR = -L/home/gq/Documents/github/caffe/build/lib
FLAGS = -g -DCPU_ONLY
SRCS=$(wildcard  src/*.cpp)
OBJS=$(SRCS:%.cpp=%.o)
TARGET = train


$(TARGET) : $(OBJS)
	g++ $(OBJS) $(FLAGS) $(LIB_DIR) $(LIBS) -o $(TARGET)

$(OBJS) : %.o : %.cpp
	g++ -c $(INCLUDE_DIR) $(LIB_DIR) $(LIBS) $(FLAGS) $< -o $@



clean:
	rm -f $(OBJS) $(TARGET)

debug:
	gdb ./$(TARGET)
	
run:
	./$(TARGET)


#INCLUDE_DIR = -Iinclude
#LIBS = -lGL -lGLU -lglut -lpthread -lopencv_highgui -lopencv_core -lopencv_imgproc -lopencv_calib3d
#FLAGS = -g	

# longxuan:
# 	./$(TARGET) data/videos/longxuan.mp4
	
# texie:
# 	./$(TARGET) data/videos/texie.mp4

# shanghai:
# 	./$(TARGET) data/videos/shanghai.mp4

# gongyuan:
# 	./$(TARGET) data/videos/gongyuan.mp4	
	
# dajiang:
# 	./$(TARGET) data/videos/dajiang0229.mp4
	
# m1_left_8x8:
# 	./$(TARGET) data/images/move_left_8x8_001.png data/images/move_left_8x8_002.png

# m2_left_64x64:
# 	./$(TARGET) data/images/move_left_64x64_001.png data/images/move_left_64x64_002.png
	
# tsukuba:
# 	./$(TARGET) data/images/tsukuba_l.png data/images/tsukuba_r.png
	
# tsukuba2:
# 	./$(TARGET) data/images/tsukuba_l.png data/images/tsukuba_r_rot.png


	
