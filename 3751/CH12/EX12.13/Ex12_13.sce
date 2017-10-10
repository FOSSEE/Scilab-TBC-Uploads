//Fluid Systems - By - Shiv Kumar
//Chapter 12- Reciprocating Pumps
//Example 12.13
//To Determine the  Crank Angle, at which there is no flow of water to or from the vessel.

        clc
         clear
  
//Given Data:-
        D=17.5;     //Bore diameter, cm
        L=35;     //Stroke Length, cm
        d_s=15;       //Diameter of Suction pipe, cm
        N=150;      //Speed, rpm

//Computations:-
       D=D/100;       //m
       L=L/100;       //m
       d_s=d_s/100;        //m
   
     omega=2*%pi*N/60;      //rad/s
      A=(%pi/4)*D^2;      //m^2
      r=L/2;      //m
      Q_s=2*A*omega*r/%pi;       //Rate of flow from sump upto air vessel, m^3/s
      theta=asind(Q_s/(A*omega*r));        //degrees


//Result:-
         printf("The Crank Angle at which there is no flow, theta=%.2f Degrees\n",theta)


