
//Fluid system - By - Shiv Kumar
//Chapter 2 - Impact of Jet
//Example 2.4
      clc
     clear
     
//Given Data:-
        d=65;     //Diameter of the Jet, mm
        V=45;     //Velocity of the Jet, m/s
        theta_i=35;     //Entry angle with horizontal, degrees
        theta_o=25;     //Exit angle with horizontal,  degrees

//Data Used:-
     rho=1000;     //Density of water, kg/m^3

//Computations:-
        d=d/1000;       //m
        a=(%pi/4)*d^2;      //cross-sectional area of Jet, m^2
        Fx=rho*a*V^2*(cosd(theta_i)+cosd(theta_o));      //N
        Fy=rho*a*V^2*(sind(theta_i)-sind(theta_o));      //N
//Results:-
     printf("Force exerted by Jet in horizontal direction, Fx=%.2f N  \n", Fx)        //The answer provided in the textbook is wrong
     printf("Force exerted by Jet in vertial direction, Fy=%.3f N(Fy acts upward) or Fy=-%.3f N(Fy acts downward)  \n", Fy, Fy)      //The answer vary due to round off error

     		
