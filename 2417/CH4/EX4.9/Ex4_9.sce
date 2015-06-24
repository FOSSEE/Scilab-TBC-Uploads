//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 4.9\n\n\n");
// Chapter 4 : The Second Law Of Thermodynamics
// Problem 4.9  (page no. 158) 
// Solution

//For reversible isothermal process,
//In problem 4.8,
q=843.7; //Heat //Unit:Btu //at 200 psia
t=381.86; //(unit:fahrenheit) 
//converting temperatures to absolute temperatures;
T=t+460; //Unit:R"
deltaS=(q/T);  //Change in entropy //Btu/lbm
printf("Change in entropy is %f  Btu/lbm*R\n",deltaS); //1 LBm of saturated water

//In problem 4.9
t1=381.86; //(unit:fahrenheit) //Source temperature
t2=50; //(unit:fahrenheit)  //Sink temperature
//converting temperatures to absolute temperatures;
T1=t1+460;  //Source temperature //Unit:R
T2=t2+460; //Sink temperature //Unit:R
qin=q;//heat added to the cycle 
n=(1-(T2/T1))*100; //Efficiency
printf("Efficiency is %f percentage\n",n);
wbyJ=qin*n*0.01;//work output
printf("Work output is %f Btu/lbm\n",wbyJ);
Qr=qin-wbyJ; //heat rejected
printf("Heat rejected is %f Btu/lbm\n\n",Qr);
printf("As an alternative solution and refering to figure 4.12,\n")
qin=T1*deltaS; //heat added //btu/lbm
Qr=T2*deltaS; //Heat rejected //btu/lbm
printf("Heat rejected is %f Btu/lbm\n",Qr);
wbyJ=qin-Qr; //Work output //Btu/lbm
printf("Work output is %f Btu/lbm\n",wbyJ);
n=(wbyJ/qin)*100; //Efficiency
printf("Efficiency is %f percentage\n",n);
