clc
clear
//input
fo=1.5//objective's focal length
fc=0.04//eyepiece focal length
//calculation
m=fo/fc//angular magnification
v=fc*(fc+fo)/fo//distance of eye ring from eyepiece
//output
printf("the angular magnification is %3.2f",m)
printf("\n the distance of eye ring from eyepiece is %3.3f m",v)
