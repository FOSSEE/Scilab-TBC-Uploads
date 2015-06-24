clc
clear
//DATA GIVEN
T=72;                      //number of teeth
Pc=26;                     //circular pitch in mm

//circular pitch, Pc=(pi*D)/T
D=Pc*T/(%pi);              //pitch diameter in m
//Pc*Pd=(pi)
Pd=(%pi)/Pc;               //diametral pitch in teeth/mm
// Module, m=D/T
m=D/T;                     //module in mm/tooth

printf(' (i) The Pitch diameterm, D is: %3.2f mm. \n',D);
printf(' (ii) The Diametral pitch, Pd is: %1.2f teeth/mm. \n',Pd);
printf('(iii) The Module,m is: %1.2f mm/tooth. \n',m);
