//Fluid Systems - By - Shiv Kumar
//Chapter 11- Centrifugal Pumps
//Example 11.3
//To Find the  Power of the Pump.

     clc
      clear

//Given Data:-
        H=40;      //Total Head,  m
        Q=50;       //Discharge, litres/s
        eta_o=62/100;      //Overall EEfficiency


//Data Used:-
        rho=1000;     //Density of Water, kg/m^3
        g=9.81;       //Acceleration due to gravity, m/s^2


//Computations:-
         Q=Q/1000;     //m^3/s
         
         P=rho*Q*g*H/(eta_o*1000);      //kW

//Result:-
        printf("The Power of the Pump, P=%.3f kW \n",P)

