//Chapter 1
//Example 1.15
//Page 38

clear;
clc;

STF = 33;
t1 = 1.5;
t2 = 0.75;
T1 = 20;
T2 = 41;
bi = STF*T1;
bf = STF*T2;
e = 2.718
//Finding the error in temperature represents

printf("The value of b(0.75) is %.1f mV \n",bi+(bf-bi)*[1-e^(-t2/t1)]);
printf("This corresponds to an indicated temperature of %.1f degree celcius\n",(bi+(bf-bi)*[1-e^(-t2/t1)])/STF);
printf("So the error is %.1f degree celcius because the actual temperature is 41 degree celcius \n",T2-((bi+(bf-bi)*[1-e^(-t2/t1)])/STF));
