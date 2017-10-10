//Fluid Systems - By Shiv Kumar
//Chapter 16- Hydraulic Power and Its Transmissions
//Example 16.10
//To Find   (i)The Weight of Loaded Cylinder and energy stored by the Cylinder   (ii)Ther Power supplied by the Accumulator     (iii)The Diameter of ram of an ordinary Accumulator.
      clc
      clear

//Given Data:-
         D=180;        // mm
        d=150;      //mm
        L=1.25;      //Stroke length, m
         p=100;      //Pressure of Water, bar

//Computations:-
        D=D/1000;      //m
        d=d/1000;      //m
        p=p*10^5;      //N/m^2

        A=(%pi/4)*(D^2-d^2);       //Annular area of Ram, m^2
    //(i)         
          W=p*A/1000;        //Weight of Loaded Cylinder, kN
          Energy=W*L;         //Energy stored in the Accumulator, kNm
   //(ii)
           t=90;      //Time taken by ram to complete the stroke, seconds                                   
           P=W*L/t;       //kW
   //(iii)
            D=(W*1000/(p*%pi/4))^(1/2)*1000;        //mm

//Results:-
         printf("(i)Weight of Loaded Cylinder, W=%.2f kN\n",W)       //The answer vary due to round off error
             printf("    Energy stored in the Accumulator=%.3f kNm\n",Energy)       //The answer vary due to round off error
         printf("(ii)Power Supplied by the Accumulator=%.3f kW\n",P)       //The answer vary due to round off error
         printf("(iii)Ram Diameter (In case of Ordinary Accumulator) = %.2f mm\n",D)       //The answer vary due to round off error
