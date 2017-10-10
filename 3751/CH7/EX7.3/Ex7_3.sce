//Fluid Systems by Shiv Kumar
//Chapter 7 - Performance of water turbine
//Example 7.3
//To Find (a) The Discharge required   (b) The Diameter of Wheel  (c) The Diameter and number of jets required    (d)The Specific Speed
       clc
       clear
//Given:
    P=8200;    //Power Developed, kW
    H=128;     // Head , m
    N=210;    // Speed, rpm
    Cv=0.98;   // Co-efficient of Velocity
    eta_H=89/100;    //Hydraulic Efficiency
    Ku=0.45;     //	Speed Ratio
   dbyD=1/10;   //Ratio of jet diameter to wheel Diameter
   eta_m=92/100;   //Mechanical Efficiency
//Data required
    rho=1000;   //Density of Water, Kg/m^3
    g=9.81;    // Acceleration due to gravity, m/s^2
//Assumptions:
    eta_v=100/100;    // Volumetric efficiency is 100%

//Computations
    D=Ku*sqrt(2*g*H)*60/(%pi*N);   //Wheel Diameter, m
    d=D*dbyD;      // Jet diameter, m
    eta_o=eta_H*eta_m*eta_v;   //Overall Efficiency
    Q=P*1000/(rho*g*H*eta_o);    //Net Discharge,  m^3/s
    q=(%pi/4)*d^2*Cv*sqrt(2*g*H);    //Discharge through one jet, m^3/s
     n=round(Q/q);    //Number of jets
     Ns= N*P^(1/2)/(H^(5/4));    //Specific Speed, SI Units

//Results
printf("(a) The Discharge required, Q =%.3f m^3/s\n",Q)
printf("(b) The Diameter of Wheel, D =%.2f m\n",D)
printf("(c) The Diameter,  d=%.3f m  and\n     number of jets required =%.f \n",d,n)
printf("(d)The Specific Speed, Ns=%.2f  (SI Units)\n",Ns)     //The Answer Vary due to Round off Error
   
