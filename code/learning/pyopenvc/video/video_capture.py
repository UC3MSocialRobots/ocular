import cv2
import time

cap=cv2.VideoCapture(0)

while True: 
	ret, im=cap.read()
	cv2.imshow('video test', im)
	key=cv2.waitKey(10)
	if key ==27: 
		break
	if key ==ord(' '): 
		name=time.asctime( time.localtime(time.time()) )
		name+='.jpg'
		cv2.imwrite(name, im)

