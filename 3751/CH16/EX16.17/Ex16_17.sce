//Fluid Systems - By Shiv Kumar
//Chapter 16- Hydraulic Power and Its Transmissions
//Example 16.17
//To Find the Efficiency of Hydraulic Crane.

      clc
      clear

//Given Data:-
          V=340;        //Volume of water utilized,  litres
          p=50;       //Pressure Intensity,  bar
          W=125;      //Load Lift, kN
          l=10;       //Displacement of Weight,  m
          

//Computations:-
           Energy=p*10^5*V/1000;         //Energy Supplied to Crane, J
           Work=W*1000*l;          //Work done by crane in lifting load, J
           eta=Work/Energy*100;       //Efficiency In Percentage             

//Result:-
         printf("Efficiency of Hydraulic Crane, eta=%.2f Percent\n",eta)       //The answer vary due to round off error


