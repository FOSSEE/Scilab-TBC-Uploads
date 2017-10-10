//Calculate the Percent Ionic character of the H-F bond

//Example 15.1

clc;

clear;

mewexp=1.91*3.3356*10^-30;  //Experimental dipole moment in C m

Q=1.602*10^-19;  //Charge on electron in C

r=92*10^-12; //Distance between the ions in m

mewionic=Q*r;  //Dipole moment in C m

I=(mewexp/mewionic)*100;  //Percent Ionic character of the H-F bond in percent

printf("Percent Ionic character = %.1f percent ",I);  
