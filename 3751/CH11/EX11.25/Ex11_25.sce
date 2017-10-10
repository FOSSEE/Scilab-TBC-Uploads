//Fluid Systems - By - Shiv Kumar
//Chapter 11 - Centrifugal Pumps
//Example 11.25
//To Find the Discharge and Head of the Pump at Condition '2' and '3'  and Compare the Power Consumed in all the cases.

      clc
      clear

//Given Data:-
          //At Condition '1'
                N1=750;         //Speed, rpm
                Q1=60;            //Discharge, l/s
                H1=20;           //Head, m

         //At Condition '2'
               N2=1200;          //Speed, rpm
 
          //At Condition '3'
               N3=4200;          //Speed, rpm

//Computations:-
          Q2=Q1*(N2/N1);        // l/s
          H2=H1*(N2/N1)^2;       //m
          Q3=Q1*(N3/N1);       // l/s
          H3=H1*(N3/N1)^2;      //m

//Results:-
        printf("At Condition -2   Discharge, Q2=%.f l/s  and  Head, H2=%.1f m\n",Q2,H2)
        printf(" At Condition -3   Discharge, Q3=%.f l/s  and  Head, H3=%.1f m\n",Q3,H3)
        printf(" P1: P2 : P3 = 1 : %.2f : %.2f ",Q2*H2/(Q1*H1),Q3*H3/(Q1*H1))       //The answer vary due to round off error


