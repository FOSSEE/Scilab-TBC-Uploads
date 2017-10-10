//Fluid Systems - By Shiv Kumar
//Chapter 17- Dimensional and Model Analysis
//Example 17.24
//To Find the Prototype to Model Scale Ratios for : (i)Velocity    (ii)Time     (iii)Acceleration       (iv)Force .   and Wave Height and Time taken for Model.

     clc
     clear

//Given Data:-
         Lr=50;         //Scale Ratio (Lp/Lm) 
      //For Prototype,
           Hp=1.5;        //m
           Tp=25;        //Seconds(s)

//Computations:-
          Vr=Lr^(1/2);        //Velocity Ratio
          Tr=Lr^(1/2);        //Time Ratio
          ar=Vr/Tr;           //Acceleration Ratio
          Fr=Lr^3;          //Force Ratio

          Hm=Hp/Lr;     //m
          Tm=Tp/Tr;      //Seconds(s)


//Results:-
       printf("(i)Velocity Ratio, Vr=%.2f\n (ii)Time Ratio, Tr=%.2f \n (iii)Acceleration Ratio, ar=%.f \n(iv)Force Ratio, Fr=%.f\n\n ",Vr,Tr,ar,Fr)
       printf("Wave Height in the Model, Hm=%.2f m\n",Hm)
       printf("Time taken in the Model, Tm=%.2f  s",Tm)     //The Answer Vary due to Round off Error
