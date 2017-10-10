//Fluid Systems - By Shiv Kumar
//Chapter 17- Dimensional and Model Analysis
//Example 17.18
//To Find the Velocity and Rate of Flow in the Model.

     clc
     clear

//Given:-
     //For Model ( Working Fluid is Water),
          Dm=150;      //Diameter of Pipe,  mm
          mu_m=0.01;       //Viscosity of Water, Poise
          
     //For Prototype ( Working Fluid is Oil),
           Dp=1.5;      //Diameter, m
           Sp=0.9;      //Specific Gravity of Oil
           mu_p=3*10^-2;      //Viscosity of Oil, Poise
           Qp=3000;        //Discharge of Oil, Litres/sec

//Data Required:-
       rho_m=1000;            //Density of Water, Kg/m^3
                      

//Computations:-
            Dm=Dm/1000;     //m
            Qp=Qp/1000;     //m^3/s
            Ap=(%pi/4)*Dp^2;    //m^2
            Am= (%pi/4)*Dm^2 ;    //m^2
            Vp=Qp/Ap;      //m/s
            rho_p=Sp*rho_m;       //Kg/m^3

        //From Reynold's Law of Similarity,
               Vm=Vp*(Dp/Dm)*(mu_m/mu_p)*(rho_p/rho_m);      //Velocity of Water in Model, m/s
               Qm=Am*Vm*1000;          //Rate of Flow in Model, Litres/sec

//Results:-
         printf("The Velocity in the Model, Vm=%.3f m/s\n",Vm)      //The Answer Vary due to Round off Error
         printf("The Rate of Flow in the Model, Qm=%.2f Litres/sec\n",Qm)         //The Answer Vary due to Round off Error
  

