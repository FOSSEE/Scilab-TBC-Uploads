//Fluid system - By - Shiv Kumar
//Chapter 2 - Impact of Jet
//Example 2.19
      clc
     clear
     
//Given Data:-
        d=40;     //Diameter of the Jet, mm
        V=24;     //Velocity of the Jet, m/s

//Data Used:-
     rho=1000;     //Density of water, kg/m^3

//Computations:-
        d=d/1000;       //m
        a=(%pi/4)*d^2;      //cross-sectional area of Jet, m^2
   //CaseI - Jet strikes normal to a fixed plate
     //(a)
        Fx=rho*a*V^2;      //N
     //(b)Work done, W
        W=0;     //As there is no motion of flat plate
     //(c)
        eta=0;         //Hydraulic efficiency is zero
        
//Result I:-
     printf("Case I:  \n\t")
     printf("(a)Force exerted by Jet on the Plate in direction of Jet, Fx=%.2f N  \n\t", Fx)      //The answer vary due to round off error
     printf("(b)Work done by Jet per second=%.2f N \n\t", W)      //The answer vary due to round off error
     printf("(c)Hydraulic efficiency of the Jet, eta_H=%.2f percent \n\n", eta)      //The answer vary due to round off error
  //Case II - Jet strikes the moving plate
         u=10;          //Velocity of moving flat plate, m/s
    //(a)
         Fx=rho*a*(V-u)^2;         //N
    //(b)
         W=Fx*u;       //N-m/s
    //(c)
         eta=2*W/(rho*a*V^3)*100;        //In percentage
  //Result II
     printf("Case II: \n\t")
     printf("(a)Force exerted by Jet on the Plate in direction of Jet, Fx=%.2f N  \n\t", Fx)      //The answer vary due to round off error
     printf("(b)Work done by Jet per second=%.2f N \n\t", W)      //The answer vary due to round off error
     printf("(c)Hydraulic efficiency of the Jet, eta_H=%.2f percent \n\n", eta)      //The answer vary due to round off error
  //Case III - Jet strikes a series of flat moving plate
          u=10;         //velocity of flat plate, m/s
     //(a)
          Fx=rho*a*V*(V-u);          //N
     //((b)
          W=Fx*u;           //N-m/s
     //(c)
          eta=W*2/(rho*a*V^3)*100;        //In percentage
  //Result III

     printf("Case III: \n\t")
     printf("(a)Force exerted by Jet on the Plate in direction of Jet, Fx=%.3f N  \n\t", Fx)      //The answer vary due to round off error
     printf("(b)Work done by Jet per second=%.2f N \n\t", W)      //The answer vary due to round off error
     printf("(c)Hydraulic efficiency of the Jet, eta_H=%.2f percent \n\n", eta)      //The answer vary due to round off error
     
     
