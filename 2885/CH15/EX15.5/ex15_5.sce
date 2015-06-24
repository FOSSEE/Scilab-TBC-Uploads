//Calculate reading and error of each voltmeter
clear;
clc;
//soltion

function [z]=prll(r1,r2)//Function for the parallel combination of resistor
    z=r1*r2/(r1+r2);
endfunction

//given

S_A=1000;// Ω/V        //sensitivity
S_B=20000;// Ω/V        //sensitivity
R=50;//V           //range of voltmeter
Vs=150;//V          //Supply
R1=100*10^3;//ohm
R2=50*10^3;//ohm
Vt=Vs*(R2/(R1+R2));

//Voltmeter A
Ri1=S_A*R;
Rxy_A=prll(Ri1,R2);      //total resistance at X and Y
V1=Vs*(Rxy_A/(Rxy_A+R1));
printf("The voltmeter indicates %.0f V\n",V1);

//Voltmeter B
Ri2=S_B*R;
Rxy_B=prll(Ri2,R2);      //total resistance at X and Y
V2=Vs*(Rxy_B/(Rxy_B+R1));
printf("The voltmeter indicates %.2f V\n",V2);

e1=(Vt-V1)*100/Vt;
e2=(Vt-V2)*100/Vt;
printf("The error in the reading of voltmeter A = %.0f percent\n",e1);
printf("The error in the reading of voltmeter A = %.1f percent",e2);
