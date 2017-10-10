//Fluid Systems - By Shiv Kumar
//Chapter 17- Dimensional and Model Analysis
//Example 17.23
//To Find the Velocity of the Prototype and Force Required to Propel the Prototytpe.

     clc
     clear

//Given Data:-
         Lr=40;         //Scale Ratio (Lp/Lm) 
      //For Model,
             Vm=2;    //Velocity for the Model, m/s
             Fm=0.5;     //Propulsive Force in Model, N
     //For Prototype,
          Lp=45;     //m


//Computations:-
         //By Froude's Law of Similarity,
             Vp=Vm*Lr^(1/2);       //Velocity for the Prototype, m/s
              Fp=Fm*Lr^3;       //Force Required to Propel the Prototytpe, N 


//Results:-
       printf("The Velocity of the Prototype, Vp=%.2f m/s \n",Vp)        //The Answer vary due to Round off Error
       printf("The Force Required to Propel the Prototytpe , Fp=%.f N \n",Fp)


