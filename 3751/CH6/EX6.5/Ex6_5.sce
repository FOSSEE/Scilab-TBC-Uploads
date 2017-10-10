//Fluid System By Shiv Kumar
//Chapter 6 - Kaplan and Propeller Turbines
//Example 6.5
//To Find (a)Guide Vane Angle at Inlet  (b)Runner Vane Angle at Inlet 

clc
clear

//Given:
   P=22500 //Shaft Power, KW
   H=20;   //Head, m
   N=148;   //Speed, rpm 
   eta_H=95/100;  //Hydraulic Efficiency 
   eta_o=89/100;  //Overall Efficiency 
   D=4.5;    //Diameter of Runner, m
   d=2;    //Diameter of Hub, m
   Beta_o=34   //Runner Vane Angle at Outlet, Degrees   
      
//Data Required:
   rho=1000;   //Density of Water, Kg/m^3
   g=9.81;     //Acceleration due to gravity, m/s^2

//Computations

   u=%pi*D*N/60;     //Velocity of runner, m/s
   Q=P*10^3/(rho*g*H*eta_o);   //Discharge, m^3/s 
        Vfi=Q/((%pi/4)*(D^2-d^2));     // m/s
  //As Velocity of Flow is Constant
          ui=u;
          uo=u;
        Vfo=Vfi;
        Vf=Vfo;
    Vrwo=Vfo/tand(Beta_o);    //m/s
    Vwo=uo-Vrwo;
         Vo=sqrt(Vfo^2+Vwo^2);      //m/s
        Vwi=(g*H-Vo^2/2)/u+Vwo ;    //m/s
//(a)Guide Vane Angle at Inlet,Alpha_i
     Alpha_i=atand(Vfi/Vwi);     //Degrees
//(b)Runner Vane Angle at Inlet,Beta_i
      Beta_i=180-atand(Vfi/(ui-Vwi));   //Degrees

//Results
        printf("(a)Guide Vane Angle at Inlet, Alpha_i=%.2f Degrees\n",Alpha_i)    //The answer vary due to round off error
       printf("(b)Runner Vane Angle at Inlet, Beta_i =%.f Degrees\n",Beta_i)    //The answer provided in the textbook is wrong

