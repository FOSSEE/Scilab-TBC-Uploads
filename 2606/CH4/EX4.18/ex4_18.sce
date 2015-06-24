//Page Number: 4.19
//Example 4.18
clc;
//Given
delf=75D+3; //Hz
fM=15D+3; //Hz

D=delf/fM;
//Given formula fb=2(D+2)*fM
fb1=2*(D+2)*fM;
disp('Hz',fb1,'BW uing formula');

//Carsons Rule
fb2=2*(D+1)*fM;
disp('Hz',fb2,'BW uing Carsons Rule');

//High quality Fm radios require minimum 200kHz
//Therefore, carsons rule underestimates bandwidth
