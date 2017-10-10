//Fluid Systems - By Shiv Kumar
//Chapter 12- Reciprocating Pumps
//Example 12.3
//To Calculate The Maximum Speed at which pump may be run and Determine Resultant Suction Head at Begining, Middle and End of the Stroke.
  
      clc
      clear

//Given Data:-
    D=150;       //Diameter of Plunger, mm
    L=250;       //Stroke length, mm
    l_s=10;        //Length of Suction Pipe, m
    d=75;         //Diameter of Suction Pipe, mm
    hs=4;        //Suction Head, m of water
    Ha=10.34;         //Atmospheric Pressure, m of water
    Habs=2.44;       //Absolute Pressure Head, m of water     
    
//Data Used:-
       g=9.81;         //Acceleration due to gravity, m/s^2


//Computations:-
           Hv=Ha-Habs;      //Vaccume Pressure, m of water
     //For Maximum Resultant Suction Head,
            Hs=Hv;
      A=(%pi/4)*(D/1000)^2;         //m^2
      a_s=  (%pi/4)*(d/1000)^2;         //m^2
      r=L/2000;      //m
      omega=sqrt((Hs-hs)*g*a_s/(l_s*A*r));     //radian/sec
      N=60*omega/(2*%pi);      //rpm

//Result 1
      printf(" The Maximum Speed at which pump may be run, N=%.2f rpm \n",N)       //The answer vary due to round off error
   
    //At Begining
      Has=(l_s/g)*(A/a_s)*omega^2*r*cosd(0);     //m
      Hs=hs+Has;         //Resultant Head at Begining of Stroke, m of water

//Result 2
      printf(" Resultant Head at Begining of Stroke, Hs=%.1f m of water \n",Hs)


     //At Middle
      Has=(l_s/g)*(A/a_s)*omega^2*r*cosd(90);     //m
      Hs=hs+Has;      //Resultant Head at Middle of Stroke (Has=0), m of water
     
//Result 3
      printf(" Resultant Head at Middle of Stroke, Hs=%.f m of water \n",Hs)


    //At the End
        Has=(l_s/g)*(A/a_s)*omega^2*r*cosd(180);     //m
        Hs=hs+Has;         //Resultant Head at End of Stroke, m of water            
          // Resultant Head at End of Stroke is not calculated and displayed as result in the textbook.

//Result 4
      printf(" Resultant Head at End of Stroke, Hs=%.1f m of water \n ",Hs) 


