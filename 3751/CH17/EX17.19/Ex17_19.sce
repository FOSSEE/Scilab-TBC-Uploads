//Fluid Systems - By Shiv Kumar
//Chapter 17- Dimensional and Model Analysis
//Example 17.19
//To Find the Speed of Air in Wind Tunnel and Determine the The Ratio of Drag(Resistance) between the Model and its Prototype.

     clc
     clear

//Given:-
         Lr=30;       //Scale Ratio (Lp/Lm)
     //For Model ( Working Fluid is Air),
             nu_m=0.016;       //Kinematic Viscosity of Air, Stoke
             rho_m=1.24;     //Density of Air, Kg/m^3

     //For Prototype ( Working Fluid is Sea Water),
           Vp=10;       //Speed of Sub-marine (Prototype), m/s
           nu_p=0.012;      //Kinematic Viscosity of Sea Water, Stoke
           rho_p=1030;      //Density of Sea Water, Kg/m^3

//Computations:-
        //From Reynold's Law of Similarity,
               Vm=Vp*(nu_m/nu_p)*Lr;      //Velocity of Air, m/s

               Fp_by_Fm=(rho_p/rho_m)*Lr^2*(Vp/Vm)^2;        //Ratio of Drag Force (Resistance)


//Results:-
         printf("The Speed of Air in Wind Tunnel,  Vm=%.f m/s\n",Vm)
         printf("The Ratio of Drag Force (Resistance), Fp/Fm=%.3f  \n",Fp_by_Fm)
  
