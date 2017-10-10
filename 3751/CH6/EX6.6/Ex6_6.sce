//Fluid System By Shiv Kumar
//Chapter 6 - Kaplan and Propeller Turbines
//Example 6.6
//To Find (a)Diameter of Runner  (b)Speed of Turbine (c)Specific Speed of the turbine

      clc
      clear

//Given:
   P=9100;   //Shaft Power, KW
   H=5.6;   //Net Available Head, m
   Ku=2.09;       //Speed Ratio
   Kf=0.68;     //Flow Ratio
   eta_0=86/100;  //Overall Efficiency
   dbyD=1/3;   //Ratio of Diameters of Hub and Runner
   
//Data Required:
   rho=1000;   //Density of Water, Kg/m^3
   g=9.81;     //Acceleration due to gravity, m/s^2

//Computations

     Q=P*10^3/(rho*g*H*eta_0);   //Discharge, m^3/s


      d=sqrt(Q/((%pi/4)*Kf*sqrt(2*g*H)*(dbyD^-2-1)));   // Diameter of Hub ,m
  //(i) Diameter of Runner ,D
      D=d/dbyD;  //m
  
  //(ii) Speed of Turbine,N
     N=Ku*60*sqrt(2*g*H)/(%pi*D);  // rpm
//(iii) Specific Speed of Turbine, Ns
     Ns=N*(P)^(1/2)/(H^(5/4));   // SI Units


//Results 
    printf("(i)Diameter of Runner , D=%.2f m\n",D)
    printf("(ii)Speed of Turbine, N =%.2f rpm\n",N)    //The answer vary due to round off error
    printf("(iii) Specific Speed of Turbine, Ns =%.2f (SI Units)\n",Ns)    //The answer provided in the textbook is wrong(Due to error in N)

