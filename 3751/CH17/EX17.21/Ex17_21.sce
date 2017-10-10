//Fluid Systems - By Shiv Kumar
//Chapter 17- Dimensional and Model Analysis
//Example 17.21
//To Find the  Ship Velocity and Propulsive Force in the Prototype.

     clc
     clear

//Given Data:-
       //For Model,
           Lm=1;     //Length of Model, m
           Vm=0.7;    //Speed in the Model, m/s
           Fm=5;     //Force in the Model, N
           
      //For Prototype,
           Lp=50;        //Length of Prototype, m
  

//Computations:-
         //By Froude's Law of Similarity,
             Vp=Vm*(Lp/Lm)^(1/2);       //Velocity of the Prototype(Ship), m/s
             Fp=Fm*(Lp/Lm)^3/1000;       // Propulsive Force in the Prototype, kN


//Results:-
       printf("The Ship(Prototype) Velocity , Vp=%.2f m/s \n",Vp)
       printf("The Propulsive Force in the Prototype , Fp=%.f kN \n",Fp)


