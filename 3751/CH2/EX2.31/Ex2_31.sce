//Fluid system - By - Shiv Kumar
//Chapter 2 - Impact of Jet
//Example 2.31
//To Find (i)The volume of water drawn by the pump per second (ii)The Efficiency of Jet propulsion.
     clc
     clear
     
//Given Data:-
        F=5890;      //Total resistance offered to motion, N
        a=424;       //Total area of Jet, cm^2
        u=6;          //Speed of boat, m/s

//Data Used:-
        rho=1000;      //Density of water, kg/m^3

//Computaions:-
        a=a/10000;      //m^2
    //For solving Quadratic in V
            A=rho*a;
            B=rho*a*u;
            C=-F;
         V=(-B+sqrt(B^2-4*C*A))/(2*A);          //m/s
     //(i)
         Q=a*(V+u);             //m^3/s
     //(ii)
         eta=2*V*u/(V+u)^2*100;          //In percentage

//Results:-
     printf("(i)The Volume of water drawn by the pump per second=%.4f m^3/s  \n", Q)      //The answer vary due to round off error
     printf("(ii)The Efficiency of Jet propulsion, eta=%.2f percent", eta)      //The answer vary due to round off error
