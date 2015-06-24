//calculating required data//
//example 6//
clc
//clears the command window//;
clear
//clears//
N=(2^8)-1;//no. of steps//
M=1000/N;//no. of steps in which motor speed can varied;motor speed varies from 0 to 1000rpm//
N1=450/M;//no. of steps required to reach 450rpm//
N2=round(N1);//rounding the no. of steps//
disp('For 115th step,speed of motor will be approximately 451rpm which gives an accuracy of .22%')
//displaying the answer//

