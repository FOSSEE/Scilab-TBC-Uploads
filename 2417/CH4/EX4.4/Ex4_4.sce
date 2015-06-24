//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 4.4\n\n\n");
// Chapter 4 : The Second Law Of Thermodynamics
// Problem 4.4  (page no. 150) 
// Solution

W=(50*33000)/778;//output //W=W/J
// 1 hp = 33000 ft*LBf/min 
// 1 Btu = 778 ft*LBf
printf("Output is %f in Btu/min\n",W);
t1=1000; //Source temperature //(unit:fahrenheit)
t2=100;  //Sink temperature //(unit:fahrenheit)
//converting temperatures to absolute temperatures;
T1=t1+460; //Source temperature //Unit:R
T2=t2+460; //Sink temperature //Unit:R
n=(1-(T2/T1))*100; //efficiency
printf("Efficiency is %f percentage\n",n);//(in %)
//n=(W/J)/Qin
Qin=W/(n/100);//(unit Btu/hr) //Qin=heat added to the cycle
printf("Heat added to the cycle is %f in  Btu/min\n",Qin);
Qr=Qin*(1-(n/100));//(unit Btu/hr) //Qr=heat rejected by the cycle
printf("Heat rejected by the cycle is %f in  Btu/min \n",Qr);
