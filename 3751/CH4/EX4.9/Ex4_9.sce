//Fluid system - By - Shiv Kumar
//Chapter 4 - Pelton Turbine (Impulse Turbine)
//Example 4.9
      clc
     clear
     
//Given Data:-
        P=3000;            //Power developed, kW
        H=300;           //Head, m
        N=375;           //Speed, rpm
        eta_O=83/100;        //Overall efficiency
        Ku=0.46;       //Speed ratio
        Cv=0.98;         //Co-efficient of Velocity

//Data Used:-
     rho=1000;     //Density of water, kg/m^3
     g=9.81;        //Acceleration due to gravity, m/s^2

//Computations:-
   //(i) Diameter of Turbine, D
        D=60*Ku*sqrt(2*g*H)/(%pi*N);            //m
   //(ii) Diameter of Jet, d
        Q=P*1000/(rho*g*H*eta_O);            //m^3/s
        Vi=Cv*sqrt(2*g*H);          //m/s
        d=(Q/((%pi/4)*Vi))^(1/2);         //m

//Results:-
     printf("(i) Diameter of the Turbine, D=%.2f  m  \n", D)      //The answer vary due to round off error
     printf("(ii) Diameter of the Jet, d=%.4f m", d)     //The answer vary due to round off error



