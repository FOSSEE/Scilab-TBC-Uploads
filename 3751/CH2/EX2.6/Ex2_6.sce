//Fluid system - By - Shiv Kumar
//Chapter 2 - Impact of Jet
//Example 2.6
      clc
     clear
//Given Data:-
        M=13.5;    //Mass of plate, kg
        d=16;     //Diameter of the Jet, mm
        V=20;     //Velocity of the Jet, m/s
        L=300;     //Length of Edge of plate, mm

//Data Used:-
     rho=1000;     //Density of water, kg/m^3
     g=9.81;       //Acceleration due to gravity, m/s^2

//Computations:-
        d=d/1000;       //m
        L=L/1000;      //m
        W=M*g;         //Weight of Plate, N
        a=(%pi/4)*d^2;  //cross sectional area of Jet, m^2
    //(a)
        Fx=rho*a*V^2;   //Force exerted by Jet normal to plate, N
    //Taking Moment at 'A',
        P=Fx*(L/2)/L;     //N
    //(b)
        theta=asind(rho*a*V^2/W);      //Angle of Swing, degrees
//Results:-
     printf("(a)Horizontal force applied at Lower edge of plate to keep it vertical, P=%.3f N \n", P)       //The answer vary due to round off error
     printf("(b)Angle of swing, theta=%.2f degrees", theta)      //The answer vary due to round off error
     
         
