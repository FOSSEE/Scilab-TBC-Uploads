//Fluid Systems - By Shiv Kumar
//Chapter 16- Hydraulic Power and Its Transmissions
//Example 16.7
//To Determine the Increasse in Pressure.
      clc
      clear

//Given Data:-
          d=800;            //Diameter of pipe, mm 
          Q=0.75;        //Discharge, m^3/s 
          t=10;               //Thickness of Pipe, nmnm 
          Es=20*10^10;       //Elastic Modulus of Steel, N/m^2 
          E=2*10^9;       //Elastic Modulus of Water, N/m^2  
          l=3500;           //Lenfth of Pipe, m 
          T=5;         //Time of Valve Closure, s 
  
 
//Data Used:- 
        rho=1000;        //Density of Water, Kg/m^3 
 
//Computations:- 
         K=E/(1+(d/t)*(E/Es));       //Combined Modulus of Elasticity, N/m^2  
         a=sqrt(K/rho);        //Velocity of Pressure Wave, m/s 
          Tc=2*l /a;         //Critical time,   s 
      
         //t<t_c. So, valve closure is rapid. 
              A=(%pi/4)*(d/1000)^2;           //m^2 
              V=Q/A;            //Average Velocity of Flow, m/s       
              p=rho*V*a/1000;        //Pressure Rise, kPa 
  
 
//Result 
          printf("The Rise of Pressure=%.2f kPa\n",p)      //The answer provided in the textbook is wrong
 
 
 
