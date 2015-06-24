clc();
clear;
//Given :
l = 200; // in ft
b = 50; // in ft
h = 30;// in ft
alpha = 0.25; //average absorption coefficient
V  = l*b*h; // Volume in ft^3
S = 2*((l*b)+(l*h)+(b*h)); //total surface area in ft^2
a = alpha*S;// in sabins
T = (0.049*V)/a; // reverberation time in s
//400 people present in the auditorium, 1 person is equivalent to 4.5 sabins
a1 = a+ 400*4.5; // in sabins
T1 = (0.049*V)/a1;// reverberation time in s
printf("For auditorium : %.2f s \n",T);
printf("When people are present %.2f s",T1);
