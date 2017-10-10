//Fluid system - By - Shiv Kumar
//Chapter 2 - Impact of Jet
//Example 2.2
      clc
     clear
     
//Given Data:-
        V=25;     //Velocity of the Jet, m/s
        theta=45;     //Inclination of the plate with Jet axis, degrees
        a=30;     //cross-sectional area of the Jet, cm^2

//Data Used:-
     rho=1000;     //Density of water, kg/m^3

//Computations:-
       a=a*10^-4;    //m^2
       //(a) Force normal to the plate is the maximum force of Jet on the plate Fn
       Fn=rho*a*V^2*sind(theta);     //N
       //(b) Components of the force Fn,
             Fx=Fn*sind(theta);      //N
             Fy=Fn*cosd(theta);      //N
       //(c) Ratio in which the discharge gets divided
          Q1_by_Q2=(1+cosd(theta))/(1-cosd(theta));
//Results:-
     printf("(a)The Maximum force of the Jet on the plate, Fn=%.2f  N  \n", Fn)        //The answer vary due to round off error
     printf("(b)Components of the Normal force, Fn are: \n\t")
     printf("Fx=%.2f N   ,  Fy=%.2f N  \n", Fx, Fy)        //The answer vary due to round off error
     printf("(C)The Ratio in which discharge gets divided, Q1/Q2=%.2f \n", Q1_by_Q2)        //The answer vary due to round off error
