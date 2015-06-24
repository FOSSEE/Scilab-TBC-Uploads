// Chapter 1
//Phase response
//page 14
//Example no 1-14
//Given
clc;
fc=120;          // in Hz
fc1=1200;       // in Hz
fc2=12;         // in Hz
w1=atan(fc/fc2);
printf("\n W1 = %.1f degrees one decade below fc\n ",w1*180/%pi);// Result
w2=atan(fc/fc1);
printf("\n W2 = %.2f degrees one decade below fc\n",w2*180/%pi);// Result


