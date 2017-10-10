//Fluid system - By - Shiv Kumar
//Chapter 2 - Impact of Jet
//Example 2.34
      clc
     clear
     
//Given Data:-
        F=100800;      //Total resistance offered to motion, N
        a=0.8;       //Total area of Jet, m^2
        u=5;          //Speed of boat, m/s

//Data Used:-
        rho=1000;      //Density of water, kg/m^3

//Computations:-
    //For solving Quadratic in V
            A=rho*a;
            B=rho*a*u;
            C=-F;
         V=(-B+sqrt(B^2-4*C*A))/(2*A);          //m/s
     //(a)
         Q=a*(V+u);             //m^3/s
     //(b)
         eta=2*V*u/(V+u)^2*100;          //In percentage

//Results:-
     printf("(a)The Volume of water drawn by the pump per second=%.1f m^3/s  \n", Q)
     printf("(b)The Efficiency of Jet propulsion, eta=%.2f percent", eta)      //The answer vary due to round off error
     
     
