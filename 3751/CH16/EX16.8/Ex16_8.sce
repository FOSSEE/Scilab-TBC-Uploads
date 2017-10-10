//Fluid Systems - By Shiv Kumar
//Chapter 16- Hydraulic Power and Its Transmissions
//Example 16.8
//To Find   (i)Displacement of Accumulator   (ii)Capacity of Accumulator     (iii)Total weight placed on the ram.
      clc
      clear

//Given Data:-
       p=200;        //Pressure of oil, kPa 
       D=1.5;       //Diameter of Ram,  m 
       L=6;          //Stroke or Lift of Ram, m 
 
//Computations:- 
       A=(%pi/4)*D^2;     //m^2 
       Disp=A*L;       //Displacenmenmt  of Accumulator, m^3 
       Capacity=p*Disp;         //Capacity of Accumulator, kNm
       W=p*A;       //Total Weight on the Ram,  kN

//Results:-
    printf("(i) Displacenmenmt of Accumulator=%.2f m^3\n ",Disp)       //The answer vary due to round off error
    printf("(ii) Capacity of Accumulator =%.f kNm \n ",Capacity)     //The answer given in the textbook is wrong
    printf("(iii) Total Weight on the Ram, W =%.1f kN \n ",W)       //The answer vary due to round off error


          
