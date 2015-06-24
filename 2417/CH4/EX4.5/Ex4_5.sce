//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 4.5\n\n\n");
// Chapter 4 : The Second Law Of Thermodynamics
// Problem 4.5  (page no. 151) 
// Solution

t1=700; //Source temperature //Unit:Celcius
t2=20;  //Sink temperature //Unit:Celcius
//converting in F
T1=t1+273;  //Source temperature //Unit:R
T2=t2+273; //Sink temperature //Unit:R
n=(T1-T2)/T1*100; //Efficiency
printf("Efficiency is %f percentage\n",n);//(in %)
output=65;//in hp //Given
work=output*0.746;//(unit kJ/s) // 1 hp = 746 W
printf("Work is %f kJ/s\n",work);
Qin=work/(n/100);//(unit kJ/s) //Qin=heat added to the cycle
printf("Heat added to the cycle is %f kJ/s \n",Qin);
Qr=Qin*(1-(n/100));//(unit kJ/s) //Qr=heat rejected by the cycle
printf("Heat rejected by the cycle is %f  kJ/s \n",Qr);
