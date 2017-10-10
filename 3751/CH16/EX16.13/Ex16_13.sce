//Fluid Systems - By Shiv Kumar
//Chapter 16- Hydraulic Power and Its Transmissions
//Example 16.13
//To Find   the  Diameter of Cylinder.
      clc
      clear

//Given Data:-
        F=400;       //Force, N
        p=4000;      //Pressure, kPa
       
//Computations:-
       
           d=sqrt(4*F/(%pi*p*1000))*1000;        //mm

//Results;-
      printf("Cylinder Diameter, d=%.2f mm\n",d)
      
