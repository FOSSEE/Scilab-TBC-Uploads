//Fluid Systems - By - Shiv Kumar
//Chapter 12- Reciprocating Pumps
//Example 12.11
//(a)Theoritical Question.
//(b)Theoritical Question.
//(c)To Find the Rate of flow into or from the air vessel when crank makes angle of 30, 90 and 120 degrees with inner dead centre and
      //Also Determine crank angle at which there is no flow to or from the air vessel.

        clc
         clear
  
//Given Data:-
        D=200;       //Bore of the Pump, mm
        L=350;        //Stroke Length, mm
        d_s=150;       //Diameter of Suction Pipe, mm
        N=120;       //Speed of the Pump, rpm


//Computations:-
         d_s=d_s/1000;     //m
         D=D/1000;       //m
         L=L/1000;      //m

         A=(%pi/4)*D^2;      //m^2
         omega=2*%pi*N/60;       //rad/s
          r=L/2;       //m
          
        //Using the Equation 12.28 from the textbook, Rates of Flow are  
          Q_30=A*omega*r*(2/%pi-sind(30) )*1000;      //For 30 degree angle, litres/s
          Q_90=A*omega*r*(2/%pi-sind(90) )*1000;      //For 90 degree angle, litres/s
          Q_120=A*omega*r*(2/%pi-sind(120) )*1000;      //For 120 degree angle, litres/s
     
        theta=asind(2/%pi);     //Angle at which there is no flow, degrees
            //This is NOT Calculated in the Textbook.

//Results:-
     printf("Rate of Flow from the Air Vessel=%.1f litre/s  for 30 Degree Angle\n\t\t\t\t",Q_30)
     printf(" =%.f litre/s  for 90 Degree Angle\n\t\t\t\t",Q_90)
     printf(" =%.1f litre/s  for 120 Degree Angle\n",Q_120)
     
      printf("The angle at which there is no flow from or to the air vessel = %.2f Degrees\n",theta)


