//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 4.7\n\n\n");
// Chapter 4 : The Second Law Of Thermodynamics
// Problem 4.7  (page no. 152) 
// Solution

t1=700; //(unit:fahrenheit) //Source temperature
t2=200; //(unit:fahrenheit)  //Sink temperature
//converting temperatures to absolute temperatures;
T1=t1+460;  //Source temperature //Unit:R
T2=t2+460; //Sink temperature //Unit:R
//n1=(T1-Ti)/T1 and n2=(Ti-T2)/Ti //n1 & n2 are efficiency
//(T1-Ti)/T1=(Ti-T2)/Ti;
Ti=sqrt(T1*T2); //Exhaust temperature  //Unit:R
printf("Exhaust temperature of first engine is %f in R\n",Ti);
//converting absolute temperature to normal F temperature
//Ti(fahrenheit)=Ti(R)-460;
printf("Exhaust temperature of first engine is %f fahrenheit\n",Ti-460);
