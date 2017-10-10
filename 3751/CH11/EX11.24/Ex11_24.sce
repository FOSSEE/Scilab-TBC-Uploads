//Fluid Systems - By - Shiv Kumar
//Chapter 11 - Centrifugal Pumps
//Example 11.24
//To Find the the number of stages and Diameter of each Impeller of the similar multistage Pump.

      clc
      clear

//Given Data:-
          //For Single Stage Pump,
             N1=2000;        //Speed, rpm
             D1=300;          //Impeller Diameter, mm
             Hm1=32;       //Manometric Head, m
             Q1=3;       //Discharge, m^3/s
                     
        //For Multi Stage Pump,
               N2=1600;           //Speed, rpm
               H_mT2=200;        //Total Manometric Head, m
               Q2=5;        //Discharge,  m^3/s


//Computations:-
             Hm2=Hm1*(N2/N1)*sqrt(Q2/Q1);         //m
             n=round(H_mT2/Hm2);         //No. of stages
             D2=D1*(N1/N2)*sqrt(Hm2/Hm1);         //Diameter of Each Impeller, mm

//Results:-
       printf("Number of  the Stages for the Multi stage Pump, n=%.f  \n",n)
       printf("Diameter of each Impeller for the Multi stage Pump, D2=%.2f mm\n",D2)        //The answer vary due to round off error     
         

