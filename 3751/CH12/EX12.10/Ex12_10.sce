//Fluid Systems - By - Shiv Kumar
//Chapter 12- Reciprocating Pumps
//Example 12.10
//To Find the Power required to overcome the friction of Delivery pipe when        (a)No air vessel is fitted on it ,         (b)A large air vessel is fitted at the centre line of the pump.

        clc
         clear
  
//Given Data:-
        N=60;       //Speed of the Pump, rpm
        D=250;       //Plunger Diameter, mm
        L=450;        //Stroke Length, mm
        d_d=112.5;       //Diameter of Delivery Pipe, mm
        l_d=48;        //Length of Delivery Pipe, m
        f=0.04;      //Co-efficient of friction

//Data Used:-
      g=9.81;       //Acceleration due to gravity, m/s^2
      rho=1000;    //Density of water, kg/m^3


//Computations:-
         d_d=d_d/1000;     //m
         D=D/1000;       //m
         L=L/1000;      //m

         a=(%pi/4)*d_d^2;      //m^2
         A=(%pi/4)*D^2;      //m^2
         omega=2*%pi*N/60;       //rad/s
          r=L/2;       //m

     //(a)Without Air Vessel
           H_fd=f*(l_d/d_d)*(omega*r*A/a)^2/(2*g);        //Maximum loss of head due to friction in delivery pipe,  m
           m=rho*A*L*N/60;     //Mass of water lifted, kg/s
           Power=(2/3)*H_fd*m;      //W

     //Result (a)
         printf("(a)Without Air Vessel\n\t")
            printf("Power Required to Overcome Friction=%.2f W\n\n",Power)      //The answer provided in the textbook is wrong

     //(b)With Air Vessel
        Ud=A*L*N/(a*60);        //m/s
        H_fd=f*(l_d/d_d)*(Ud^2/(2*g));         //m
        Power=m*H_fd;    //W
     //Result (a)
         printf("(a)With Air Vessel\n\t")
            printf("Power Required to Overcome Friction=%.2f W\n",Power)       //The answer vary due to round off error



