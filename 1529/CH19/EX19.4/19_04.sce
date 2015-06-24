//Chapter 19, Problem 4
clc;
Ri=1000;                    //input resistance
Rf=2000;                    //feedback resistance
Vi1=0.4;                    //input voltage 1
Vi2=-1.2;                   //input voltage 2
V01=(-Rf/Ri)*Vi1;           //output voltage 1
V02=(-Rf/Ri)*Vi2;           //output voltage 2
printf("(a) When Vi = 0.4V,\n V0 = %.1f V\n\n",V01);
printf("(b) When Vi = -1.2V,\n V0 = %.1f V\n\n",V02);
