//Fluid Systems - By - Shiv Kumar
//Chapter 4 - Pelton Turbine (Impulse Turbine)
//Example 4.13
 
      clc
       clear

//Given Data:-
      H=62;         //Effective Head, m
      N=225;        //Speed of Runner, rpm
      P=133.15;        //Shaft Power, HP
      Ku=0.45;          //Speed  Ratio
      eta_o=86/100;          //Overall Efficiency
      Cv=0.98;


//Data Used:-
        rho=1000;          //Density of water, kg/m^3
         g=9.81;            //Acceleration due to gravity, m/s^2

//Computations:-
        P=P*736;          //W          
        
        Vi=Cv*sqrt(2*g*H);         //m/s
        u=Ku*sqrt(2*g*H);        //m/s
        ui=u;
        uo=u;
        Q=P/(rho*g*H*eta_o);       //m^3/s

         d=sqrt(Q/((%pi/4)*Vi))*1000;       //Diameter of Jet, mm
         D=60*u/(%pi*N);           //Diameter of Runner, m
    //As per designing range, b=3*d to 4*d
         b=3.5*d;          //Width of Buckets, mm
   //As per designing range, b=0.8*d to 1.2*d
          T=1.2*d;           //Depth of Buckets, mm
         Z=round(0.5*D/(d/1000)+15);        //Number of Buckets

//Results:-
         printf(" (a)Diameter of Jet, d=%.2f mm \n",d)       //The answer vary due to round off error
         printf(" (b) Diameter of Runner, D=%.3f m \n",D)
         printf(" (c) Width of Buckets, b=%.2f mm \n",b)       //The answer vary due to round off error
         printf(" (d) Depth of Buckets, T=%.2f mm \n",T)       //The answer vary due to round off error
         printf(" (e) Number of Buckets , Z=%.f  \n",Z)


