clear
clc;
printf("\n Example 10.1");
//For the pilot scale vessel
 c = (2.5*75)/100;       //in kg/m^3
 cs = 2.5;               //in kg/m^3
 V = 1.0;                //V is in m^3
 t = 10;                 //t is in secs
 
 //1.875 = 2.5(1-e^(-kA/b*100))
 // x =kA/b
 x = -log(1-1.875/2.5)/10;
 
 //For the full scale vessel
 c = (500*28/100)/100;
 printf("\n C = %fkg/m^3",c);
 cs = 2.5;                //cs is in kg/m^3
 V = 100;                 //V is in m^3
 t = -log(1-1.4/2.5)*(100/0.139);  //t is in secs
 printf("\n t = %d secs",t);
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 