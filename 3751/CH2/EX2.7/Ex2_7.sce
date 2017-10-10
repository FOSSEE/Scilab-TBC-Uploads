//Fluid system - By - Shiv Kumar
//Chapter 2 - Impact of Jet
//Example 2.7
 
     clc
     clear
     
//Given Data:-
        W=55.50;   //Weight of plate, N
        V=8;     //Velocity of the Jet, m/s
        d=22;     //Diameter of the Jet, mm
        AG=125;     //Distance between centre of gravity of plate from hinge, mm
        AC=150;     //Distance between axis of Jet and hinge, mm
        theta=35;    //Deflection, degrees

//Data Used:-
     rho=1000;     //Density of water, kg/m^3

//Computations:-
        d=d/1000;       //m
        AC=AC/1000;     //m
        AG=AG/1000;      //m
        a=(%pi/4)*d^2;  //cross sectional area of Jet, m^2
        Fx=rho*a*V^2;    //N
    //Taking moment about hinge point 'A',
        P=Fx*AC/AG;     //N
        Fn=(W*AG*sind(theta)+P*AG*cosd(theta))/(AC/cosd(theta));    //N
        V1=sqrt(Fn/(rho*a*cosd(theta)));     //Absolute Velocity of Jet, m/s
     velocity_increase=V1-V;      //Velocity Increase of the Jet, m/s
        
//Results:-
     printf("(a)Horizontal force applied at centre of gravity to maintain the plate in vertical position, P=%.3f N  \n", P)      //The answer vary due to round off error
     printf("(b)Increase in velocity of Jet=%.3f m/s", velocity_increase)      //The answer vary due to round off error
     
         
