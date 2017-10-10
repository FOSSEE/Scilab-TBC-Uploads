//Fluid Systems - By Shiv Kumar
//Chapter 16- Hydraulic Power and Its Transmissions
//Example 16.16
//To Find   (i) Power required to drive the Lift    (ii) Working Period of Lift     and       (iii)  Ideal Period of Lift.

      clc
      clear

//Given Data:-
          W=60;      //Load lifted by Lift, kN
          H=14;       //Height,  m
          V=0.5;        //Speed of Lift,  m/s
          t=60;       //Time for one operation, s

//Computations:-
                
   // (i) Power required to drive the Lift, P  
            P=W*H/t;        //kJ/s

   // (ii) Working Period of Lift , tw
           tw=H/V;        //s

   // (iii)  Ideal Period of Lift,  ti
              ti=t-tw;        //s

//Results
            printf(" (i) Power required to drive the Lift, P=%.f kW \n",P)
            printf(" (ii) Working Period of Lift , tw =%.f s \n",tw)
            printf(" (iii)  Ideal Period of Lift,  ti =%.f s \n",ti)

