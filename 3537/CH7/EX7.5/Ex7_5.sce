//Example 7_5
clc();
clear;
//To calculate number of reflections per meter  and total distance covered
n1=1.5
n2=1.49
phi=asin(n2/n1)*180/%pi   //units in degrees
a=25   //units in micro meters
leng=2*a*tan(phi*%pi/180)   //units inmicro meters
totalnum=10^6/leng
printf("Total number of reflections is %d\n",totalnum)
l=1  //units in meters
distance=l*(sin(phi*%pi/180))
printf("Total distance covered is %.4f Meters",distance)
//in text book answer printed wrong as 1.006mcorrect answer is 0.9933meters
