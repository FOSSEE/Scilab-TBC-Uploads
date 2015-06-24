//clc();
clear;
//To determine the effect on reverberation time
V=2265;         //volume of hall in m^3
A=92.9;         //Total absorption in m^2
T1=(0.165*V)/A;
//when one audien fill the hall then total absorption will be 2*A
T2=(0.165*V)/(2*A);
printf("T1=%f sec",T1);
printf("when one audien fill the hall then total absorption is %f sec",T2);
printf("thus reverberation time is reduced to one-half of its initial value");
