//Fluid Systems - By - Shiv Kumar
//Chapter 11 - Centrifugal Pumps
//Example 11.23
//To Find the Head and Impeller Diameter of the other Pump.

      clc
      clear

//Given Data:-
          //For Pump-1,
             N1=1000;        //Speed, rpm
             D1=320;          //Impeller Diameter, mm
             Hm1=16;       //Manometric Head, m
             Q1=0.021;       //Discharge, m^3/s
                     
        //For Pump-2,
               N2=1000;           //Speed, rpm
            //As other Pump has to deliver half the discharge,
                Q2=Q1/2;        //m^3/s


//Computations:-
             Hm2=Hm1*(N2/N1)*sqrt(Q2/Q1);         //m
             D2=D1*(N1/N2)*sqrt(Hm2/Hm1);         //mm

//Results:-
       printf("Head of the other Pump(Pump-2), Hm2=%.2f m\n",Hm2)
       printf("Impeller Diameter of the other Pump(Pump-2), D2=%.2f mm\n",D2)        //The answer vary due to round off error     
         

