//Fluid System By Shiv Kumar
//Chapter 6 - Kaplan and Propeller Turbines
//Example 6.7
//To Find (a)Diameter of Runner  (b)Speed (c)Specific Speed

clc
clear

//Given:
   H=32;   //Head, m
   P=16000;   //Shaft Power, KW
   D_per=190;  //Percentage by which Diameter of Runner(D)is Larger than diameter of Boss(d)
   eta_0=91/100;  //Overall Efficiency
   Ku=2;       //Speed Ratio
   Kf=0.64;    //Flow Ratio
     
//Data Required:
   rho=1000;   //Density of Water, Kg/m^3
   g=9.81;     //Acceleration due to gravity, m/s^2

//Computations

     Vfi=Kf*sqrt(2*g*H);     //Velocity of Flow at Inlet, m/s
     ui= Ku*sqrt(2*g*H);     //Velocity of Runner at Inlet, m/s 

     Q=P*10^3/(rho*g*H*eta_0);   //Discharge, m^3/s


      d=sqrt(Q/((%pi/4)*Kf*sqrt(2*g*H)*((D_per/100+1)^2-1)));   // Diameter of Hub ,m
  //(a) Diameter of Runner ,D
      D=d+(D_per/100)*d;  //m
  
  //(b) Speed,N
     N=ui*60/(%pi*D);  // rpm
//(iii) Specific Speed of Turbine, Ns
     Ns=N*P^(1/2)/(H^(5/4));   // SI Units


//Results 
    printf("(a)Diameter of Runner , D=%.3f m\n",D)
    printf(" (b)Speed, N =%.2f rpm\n",N)      //The answer vary due to round off error
    printf(" (c)Specific Speed, Ns =%.2f (SI Units)\n",Ns)    //The answer provided in the textbook is wrong.

