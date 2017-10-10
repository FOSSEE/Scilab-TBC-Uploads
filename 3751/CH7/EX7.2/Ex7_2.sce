//Fluid Systems by Shiv Kumar
//Chapter 7 - Performance of water turbine
//Example 7.2
//To Find (a) Specific speed of turbine (b) Power Developed   (c) Type of turbine
    clc
     clear
//Given:
   
   H=28;       //Head, m
   N=225;      //Speed, rpm
   Q=10;       //Discharge, cumec=m^3/s
   eta_o=90/100;       //Overall Efficiency
//Data Required
    rho=1000   // Density of Water, Kg/m^3
    g=9.81;    // Acceleration due to gravity,  m/ s^2
//Computations
   P=eta_o*rho*Q*g*H/1000;     //Power developed, KW
   Ns=N*P^(1/2)/(H^(5/4));       // specific speed of turbine , in SI UNITS

//Result1
   
    printf("(a)The Specific speed of Turbine = %.2f (SI Units)\n",Ns)       //The Answer Vary due to Round off Error
  printf("(b)Power developed =%.2f kW\n",P)
//To Determine the type of turbine, Result2
       if Ns>51 & Ns<=255 then
              printf("(c)The type of turbine is Francis.") 
     elseif  Ns>=8.5  &  Ns<=30 then
            printf("(c)The type of turbine is Pelton Wheel with single jet.") 
     elseif  Ns>30 & Ns<=51 then
            printf("(c)The type of turbine is Pelton Wheel with multi jet.")
     elseif  Ns>255 & Ns<=860 then
             printf("(c)The type of turbine is Kaplan or Propeller turbine.")

    end
