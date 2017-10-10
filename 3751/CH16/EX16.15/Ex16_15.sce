//Fluid Systems - By Shiv Kumar
//Chapter 16- Hydraulic Power and Its Transmissions
//Example 16.15
//To Find   (i)The Force applied in Plunger     (ii) The Number of Strokes performed by Plunger       (iii)  Work done by the Press Ram and       (iv)   Power required to drive the Plunger.

      clc
      clear

//Given Data:-
          D=165;         //Diameter of ram,   mm
          d=33;         //Diameter of Plunger,  mm
          W=5.5;      //Weight exerted by Press ram, kN
          L=250;       //Stroke Length of Plunger,  mm
          l=1.2;        //Distance moved by ram, m
          t=20;       //Time, minutes

//Computations:-
       D=D/1000;          //m
       A=(%pi/4)*D^2;       //m^2
       d=d/1000;       //m
       a= (%pi/4)*d^2;       //m^2
       W=W*1000;        //N
       L=L/1000;       //m
       t=t*60;      //seconds(s)

     // (i)The Force applied in Plunger, F1 
          F1=(a/A)*W;        //N

    //(ii) The Number of Strokes performed by Plunger, n
             n=(A/a)*(l/L);

    // (iii)  Work done by the Press Ram
               Work=W*l;     //N-m

    // (iv)   Power required to drive the Plunger, P
                P=Work/t;       //W


//Results:-
         printf(" (i) The Force applied in Plunger, F1=%.f N \n",F1)
         printf(" (ii) The Number of Strokes performed by Plunger, n =%.f  \n",n)
         printf(" (iii) Work done by the Press Ram =%.f N.m \n",Work)
         printf(" (iv) Power required to drive the Plunger, P =%.1f W \n",P)


