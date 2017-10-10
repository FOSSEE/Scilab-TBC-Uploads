//Example 24_4
clc();
clear;
//To find out the angle at which the line appears
line=5.89*10^-7        //Units in meters
noline=1/10^6       //units in Lines per meter
theta1=asin(line/noline)*180/%pi    //units in degrees
//For seond order
theta2=asin(2*line/noline)*180/%pi    //units in degrees
printf("For the first order theta1=%d degrees\nFor the second order theta2=%d degrees",theta1,theta2)
sinevalue=2*line/noline      //units in radians
printf("\n As it is impossible for the sine of angle that is=%.2f radians to be greater that unity this second order and higher order images doesnot exist",sinevalue)
