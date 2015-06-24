//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 4.3\n\n\n");
// Chapter 4 : The Second Law Of Thermodynamics
// Problem 4.3  (page no. 149) 
// Solution

//given data
t1=70; //(unit:fahrenheit) //Source temperature
t2=15; //(unit:fahrenheit)  //Sink temperature
Qin=125000; //(unit=Btu/hr) //Qin=heat added to the cycle
//converting temperatures to absolute temperatures;
T1=t1+460; //Source temperature //Unit:R
T2=t2+460; //Sink temperature //Unit:R
Qr=Qin*(T2/T1); //Qr=heat rejected by the cycle
printf("Qr is %f in Btu/hr\n",Qr);
work=Qin-Qr; //reversed cycle requires atleast input //work //btu/hr
printf("Work is %f in Btu/hr\n",work);
// 1 hp = 33000 ft*LBf/min 
// 1 Btu = 778 ft*LBf //1 hr = 60 min
printf("Minimum horsepower input required is %f hp",work*778/(60*33000));
