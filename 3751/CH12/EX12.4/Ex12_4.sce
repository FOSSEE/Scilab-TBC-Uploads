//Fluid Systems - By Shiv Kumar
//Chapter 12- Reciprocating Pumps
//Example 12.4
//To Find whether seperation will take place, and if so, at which section of pipe.
  
      clc
      clear

//Given Data:-
       ld=60.96;         //Length of Delivery Pipe, m
       a=1.83;          //Acceleration of Plunger Pump, m/s^2
       A_by_ad=2;      //ratio of Sectional Area of Plunger to that of Delivery Pipe.
      //Referring to Fig 12.6 in the textbook,
         ef=18.3;         //m
         eq=12.19;     //m
         dq=1.83;        //m
         slope=3;

      Hsp=2.44;       //Pressure Head in pipe when seperation takes place, m of water
      Hatm=10.36;      //Atmospheric Pressure Head (Barometer Reading), m of water

//Data Used:-
         g=9.81;       //Acceleration due to gravity, m/s^2

//Computations:-
        Had=-(ld/g)*A_by_ad*a;               //Head at end of stroke,   a=acceleration=omega^2*r,  Had in m
        dp=Had;    // Referring to Fig 12.6 in the textbook
        ed=eq+dq;
        Hd=ed;         //Total Delivery Head, m
        Hrd=Had+Hd;         //Resultant Pressure in Delivery pipe at end of Stroke, m
        Habs=Hatm+Hrd;        //Absolute Pressure. m of water

   Hv=Hatm-Hsp;       //Vaccum pressure, m  
   x=-Hv-Had;      //m

    if Habs<Hsp then
       printf("The Seperation Will Take Place  at x=%.2f m\n",x)       //The answer vary due to round off error   
        else
        printf("The Seperation Will Not Take Place \n")
        end


