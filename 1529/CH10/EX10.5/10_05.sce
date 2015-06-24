//Chapter 10, Problem 5, figure 10.11, figure 10.12
clc;
V=100;                  //f.s.d of voltmeter
S=1600;                 //sensitivity
R1=40e3;                //resistor 1 
R2=60e3;                //resistor 2
V1=(R1/(R1+R2))*V;      //voltage between A and B
R=V*S;                  //resistance of voltmeter
R3=((R1*R)/(R1+R));     //equivalent resistance of parallel network
V2=(R3/(R2+R3))*V;      //voltage indicated by voltmeter
printf("(a) Value of voltage V1 with the voltmeter not connected = %f V\n\n\n",V1);
printf("(b) Voltage between A and B = %f V\n\n\n",V2);
