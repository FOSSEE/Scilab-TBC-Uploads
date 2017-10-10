//Fluid Systyems - By Shiv Kumar
//Chapter 16- Hydraulic Power  and Its Transmission
//Example 16.18
//To Find       (i)The Load Lifted by Crane        (ii)The Quantity of Water needed to Lift the Load.

    clc
     clear

//Given Data:-
     d=200;          //Diameter of Ram, mm
     p=7.5;          //Pressure of Water Supplied, MPa
     VR=6;           //Velocity Ratio
     eta=50/100;        //Efficiency of Crane
     h=10;          //Height through which water is to be lifted,  m]

//Computations:-
       d=d/1000;         //m
       p=p*10^6;      //Pa

       Fp=(%pi/4)*d^2*p;        //Pressure Force Exerted on Ram, N  (answer vary due to value of %pi)
          W=Fp*eta/VR;        //Load Lifted by Crane, N
          Vw=(%pi/4)*d^2*h/VR*1000;        //Quantity of Water needed, Litres

//Results:-
       printf(" (i)The Load Lifted by Crane, W=%.f N \n",W)    //The answer provided in textbook is wrong
       printf(" (ii)The Quantity of Water needed to Lift the Load by 10 m =%.2f Litres \n",Vw)       //The answer vary due to round off error


