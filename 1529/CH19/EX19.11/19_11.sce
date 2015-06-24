//Chapter 19, Problem 11
clc;
R1=10e3;                  //resistance 1
R2=10e3;                  //resistance 2
R3=100e3;                  //resistance 3
Rf=100e3;                  //feedback resistance 
V1=5e-3;                  //input voltage 1
V2=5e-3;                  //input voltage 2
V3=50e-3;                  //input voltage 3
V4=25e-3;                  //input voltage 4
V5=25e-3;                  //input voltage 5
V6=50e-3;                  //input voltage 6
V01=(-Rf/R1)*V1;                        //output voltage 1
V02=(R3/(R2+R3))*(1+(Rf/R1))*V2;         //output voltage 2
V03=(V3-V4)*(-Rf/R1);                    //output voltage 3
V04=(V6-V5)*(R3/(R2+R3))*(1+(Rf/R1));     //output voltage 4
printf("(a) V0 = %d mV\n\n",V01*1000);
printf("(b) V0 = %d mV\n\n",V02*1000);
printf("(c) V0 = %d mV\n\n",V03*1000);
printf("(d) V0 = %d mV\n\n",V04*1000);
