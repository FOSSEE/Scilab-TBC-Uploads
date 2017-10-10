//Fluid system - By - Shiv Kumar
//Chapter 2 - Impact of Jet
//Example 2.11
      clc
     clear
//Given Data:-
   //(a)
        V=60;     //Velocity of the Jet, m/s
        theta=30;     //Angle of Outlet, degrees
   //(b)
        u=25;      //Velocity of vane, m/s
        

//Data Used:-
     g=9.81;     //Acceleration due to gravity, m/s^2
     
//Computations:-
   //(a)
        Fx=(V/g)*(1+cosd(theta));       //Force exerted by Unit weight of water in direction of Jet, N/N of Water
        Fy=V*sind(theta)/g;  //Force exerted by Unit weight of water in direction perpendicular to direction of Jet, N/N of Water
        F_R=sqrt(Fx^2+Fy^2);    //Resultant for per unit weight of water, N/N of Water
        phi=atand(Fy/Fx);           //Angle made by resultant with X-axis, degrees
        
//Results(a):-
     printf("(a)\nForce exerted by Unit weight of water in direction of Jet, Fx=%.2f N/N of Water  \n", Fx)
     printf("Force exerted by Unit weight of water in direction perpendicular to direction of Jet, Fy=%.2f N/N of water  \n", Fy)      //The answer vary due to round off error
     printf("Resulatant Force, F_R=%.2f N/N of Water at angle, phi=%.2f degrees \n\n", F_R, phi)      //The answer vary due to round off error
  //(b)
        Fx=(V-u)*(1+cosd(theta))/g;       //Force exerted by Unit weight of water in direction of Jet, N/N of Water
        Fy=(V-u)*sind(theta)/g;       //Force exerted by Unit weight of water in direction perpendicular to direction of Jet, N/N of Water
        F_R=sqrt(Fx^2+Fy^2);          //Resultant force per unit weight of water, N/N of Water
        phi=atand(Fy/Fx);             //Angle made by resultant with X-axis, degrees
        W=Fx*u;             //N-m/s/N of Water
        P=Fx*u/1000;        //Power developed per unit weight of water, KW/N of Water
  //Result(b)
     printf("(b)\nForce exerted by Unit weight of water in direction of Jet, Fx=%.2f N/N of Water  \n", Fx)      //The answer vary due to round off error
     printf("Force exerted by Unit weight of water in direction perpendicular to direction of Jet, Fy=%.2f N/N of water  \n", Fy)  
     printf("Resulatant Force, F_R=%.2f N/N of Water at angle, phi=%.2f degrees \n\n", F_R, phi)      //The answer vary due to round off error
     printf("Work done per unit weight of water=%.2f N-m/s/N of Water  \n", W)      //The answer vary due to round off error
     printf("Power developed per unit weight of water=%.4f KW/N of Water", P)      //The answer vary due to round off error
