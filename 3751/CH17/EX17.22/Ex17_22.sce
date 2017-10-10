//Fluid Systems - By Shiv Kumar
//Chapter 17- Dimensional and Model Analysis
//Example 17.22
//To Determine for the Model:    (i) The  Size and the Velocity of Waves       (ii)The Tidal Period

     clc
     clear

//Given Data:-
              Lr=200;       //Scale Ratio
       //For Prototype,
           Ap=20;     //Amplititude of Waves, m
           Vp=10;    //Velocity, m/s
           Tp=12;    //Time Period, hrs.           

//Computations:-
         //By Froude's Law of Similarity,
             Vm=Vp/Lr^(1/2);       //Velocity of Wave in the Model, m/s
             Am=Ap/Lr;          //Amplitude of waves in the Model, m
             Tm=Tp*60/Lr^(1/2);       //Tidal Period in the Model, min.


//Results:-
       printf("(i)For the Model:\n    Velocity of Wave, Vm=%.3f m/s\n    Size(Amplitude) of Wave, Am=%.1f m\n",Vm,Am)
       printf("(ii)The Tidal Period in the Model, Tm=%.2f min. \n",Tm)


