//Fluid Systems - By Shiv Kumar
//Chapter 16- Hydraulic Power and Its Transmissions
//Example 16.6
//To Calculate the Rise in Pressure due to Valve Closure in (i)10 seconds,  (ii)2.5 seconds.
      clc
      clear

//Given Data:-
          l=2500;           //Lenfth of Pipe, m 
          V=1.2 ;            //Velocity of Flow,  m/s 
          K=20*10^8;       //Bulk Modulus of Water,  N/m^2 
 
//Data Used:- 
        rho=1000;        //Density of Water, Kg/m^3 
 
//Computations:- 
          a=sqrt(K/rho);        //Velocity of Pressure Wave, m/s 
          t_c=2*l /a;         //Critical time,   s 
      
      // (i) 
             t=10;     // s
           //t>t_c. so, This is a case of Gradual valve closure. 
              p=rho*l*V/(t*1000);        //Pressure Rise, kPa 
 
      //Result (i) 
          printf("(i)Pressure Rise, p=%.f kPa\n",p) 
 
      //(ii) 
           t=2.5;     // s 
         // t<t_c.  This is a case of Instantaneous Valve Closure.    
           p=rho*V*a/1000;          // Pressure Rise, kPa 
 
      //Result (ii) 
          printf("(ii)Pressure Rise, p=%.2f kPa\n",p)       //The answer vary due to round off error
 
 
 
