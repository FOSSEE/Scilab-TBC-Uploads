//Fluid Systems - By Shiv Kumar
//Chapter 17- Dimensional and Model Analysis
//Example 17.17
//To Find the Velocity of Oil flowing in the Pipe for the condition of Dynamic Similarity.

     clc
     clear

//Given:-
     //For Model ( Working Fluid is Oil),
          Dm=80;      //Diameter,  mm
          nu_m=0.03;       //Kinematic Viscosity of Oil, Stoke
          
     //For Prototype ( Working Fluid is Water),
           Dp=200;      //Diameter, mm
           Vp=3.5;       //Velocity of Water in the Pipe, m/s
           nu_p=0.01;      //Kinematic Viscosity of Water, Stoke

//Computations:-
        //From Reynold's Law of Similarity,
               Vm=Vp*(Dp/Dm)*(nu_m/nu_p);      //Velocity of Oil, m/s

//Results:-
         printf("The Velocity of Oil , Vm=%.2f m/s\n",Vm)

  
