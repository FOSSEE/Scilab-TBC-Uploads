//Fluid Systems by Shiv Kumar
//Chapter 7 - Performance of water turbine
//Example 7.5
//To Find (a) Number of Units to be installed (b) Diameter of Wheel  (c) Diameter of Jet
    clc
     clear

//Given:

     H_G= 310;  //Gross Head,m
     l=2.5;     // Length, km
     h_f=25;    // Friction Loses, J/N=m
     TO=20;   //Total Output Power, MW
     N=660;   // Speed, rpm
     ubyVi=0.46    //Ratio of bucket to jet speed
     eta_o=88/100;   //Overall Efficiency
     Ns=28;     //Specific Speed, SI Units
     Cv=0.97;   
     Cd=0.94;   
     
     
//Data Required:
     rho=1000;      //Density of water, kg/m^3
     g=9.81;       //Acceleration due to gravity, m/s^2
      

//Computations:
   H=H_G-h_f;   //Effective Head, m
   P=(Ns*H^(5/4)/N)^2;   //Power Output of each Unit, KW
  //(a) The no. of units to be lnstalled,n
   n=round(TO*1000/P);   
  //(b)Diameter of Wheel,D
    Vi=Cv*sqrt(2*g*H);    //m/s
    D=ubyVi*Vi*60/(%pi*N);  //m

//(c) Diameter of Jet,  d
    Q=TO*10^6/(rho*g*H*eta_o);   //Net Discharge, m^3/s
    q=Q/n;  // Discharge through one unit, m^/s
    d=sqrt(q/((%pi/4)*Cd*sqrt(2*g*H)))*1000;  //mm


//Results
   printf("(a) The no. of units to be Installed=%.f Units\n",n)
   printf("(b) Diameter of Wheel, D=%.3f m\n",D)
   printf("(c) Diameter of Jet, d=%.1f mm\n",d)      //The Answer Vary due to round off Error


