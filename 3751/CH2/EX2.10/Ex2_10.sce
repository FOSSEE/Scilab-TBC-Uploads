//Fluid system - By - Shiv Kumar
//Chapter 2 - Impact of Jet
//Example 2.10
      clc
     clear
//Given Data:-
        V1=40;     //Velocity of the Jet at Inlet, m/s
        V2=32;     //Velocity of the Jet at Outlet, m/s
        theta=65;    //Angle of Deflection from original direction, degrees
        m=0.9;        //Mass flow rate, kg/s
        
//Computations:-
        Fx=m*(V1-V2*cosd(theta));       //N   (Answer in textbook is wrong)
        Fy=m*V2*sind(theta);      //N
        F_R=sqrt(Fx^2+Fy^2);      //Resultant Force, N
        phi=atand(Fy/Fx);      //Angle made by resultant with X-axis, degrees
        
//Results:-
     printf("Resultant Force, F_R=%.2f N at an angle, phi=%.2f Degrees to X-axis", F_R, phi)        //The answer provided in the textbook is wrong

        
