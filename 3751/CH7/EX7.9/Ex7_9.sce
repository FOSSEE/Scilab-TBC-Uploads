//Fluid Systems- By Shiv Kumar
//Chapter 7- Performance of Water Turbine
//Example 7.9
// To Determine the Performance of the Turbine Under a Head of 20 m
   clc
   clear

//Given:-
       //Condition 1:
            H1=25;     //Head, m
            N1=200;    //Speed, rpm
            Q1=9;        //Discharge, m^3/s
            eta_o=90/100;     //Overall Efficiency

        //Condition 2:
           H2=20;     //Head, m

//Data Required:-
    rho=1000;        //Density of Water, Kg/m^3
    g=9.81;          //Acceleration due to Gravity, m/s^2


//Calculations:-
         P1=rho*Q1*g*H1*eta_o/1000;           //KW
         N2=N1*sqrt(H2/H1);          //rpm
         Q2=Q1*sqrt(H2/H1);          //m^3/s
         P2=P1*(H2/H1)^(3/2);       //KW


//Results:-
   printf("At Condition 2 (Under a Head of 20 m):\n")  
   printf("\tSpeed, N2=%.2f rpm\n     Discharge, Q2=%.2f m^3/s\n      Power Developed, P2=%.2f kW",N2,Q2,P2)          //The Answer vary due to Round off Error


