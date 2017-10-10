//Fluid Systems by Shiv Kumar
//Chapter 7 - Performance of water turbine
//Example 7.7
//To Determine unit power, unit speed and unit discharge and also find speed, discharge and power at condition 2
       clc
       clear

//Given:
   //At Condition 1
      P1=7200;  //Power Developed, KW
      N1=300;   //Speed, rpm
      H1=350;    //Head, m
      eta_o=85/100;    // Overall efficiency

   //At Condition 2
       H2=300;  //Head, m
   
//Data Used:
      rho=1000;      //Density of Water, kg/m^3
      g=9.81;      //Acceleration due to gravity, m/s^@
      
      
//Computations:
   Q1=P1*1000/(rho*g*H1*eta_o);    //m^3/s
   Pu=P1/(H1^(3/2));    //Unit Power, KW
   Nu=N1/sqrt(H1);       //Unit Speed, rpm
   Qu=Q1/sqrt(H1);    //Unit Discharge, m^3/s
  P2=P1*(H2/H1)^(3/2);      //KW
  N2=N1*(H2/H1)^(1/2);     //rpm
  Q2=Q1*sqrt(H2/H1);       //m^3/s

//Results
   printf("Unit Power, Pu= %.3f kW\n Unit Speed, Nu=%.2f rpm\n Unit Discharge, Qu=%.4f m^/s\n",Pu, Nu, Qu)     //The Answer vary due to Round off Error
   
 printf("At head of 300 m:\n\t")
   printf("The Speed,N2=%.2f rpm\n\t",N2)      //The Answer vary due to Round off Error  
   printf("The power,P2= %.2f kW\n\t",P2)
   printf("The Discharge, Q2=%.3f m^3/s\n",Q2)      //The Answer vary due to Round off Error

