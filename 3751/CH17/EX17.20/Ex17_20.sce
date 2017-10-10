//Fluid Systems - By Shiv Kumar
//Chapter 17- Dimensional and Model Analysis
//Example 17.20
//To Find the Discharge and the Velocity over the Prototype.

     clc
     clear

//Given Data:-
       //For Model,
           Qm=3;    //Discharge over the Model, m^3/s
           Vm=1.5;    //Velocity of Flow over the Model, m/s
    Lr=40;         //Scale Ratio (Lp/Lm)  


//Computations:-
         //By Froude's Law of Similarity,
             Vp=Vm*Lr^(1/2);       //Velocity of Flow ovre the Prototype, m/s
           Qp=Lr^2*(Vp/Vm)*Qm;        //Discharge over the Prototype, m^/s


//Results:-
       printf("The Velocity over the Prototype, Vp=%.2f m/s \n",Vp)      //The Answer Vary due to Round off Error.
       printf("The Discharge over the Prototype, Qp=%.f m^3/s \n",Qp)       //The Answer provided in the Textbook is Wrong.


