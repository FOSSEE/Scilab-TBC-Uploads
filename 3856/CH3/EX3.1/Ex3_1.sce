//Calculate the Most probable speed ,Mean speed and Root mean square speed for Oxygen molecule

//Example 3.1

clc;

clear;

R=8.314;   //Gas constant in J K^-1 mol^-1

T=300;  //Temperature in kelvin

mew=0.03200;  //Molar mass of Oxygen kg mol^-1

Cmp=sqrt((2*R*T)/(mew))//Most probable speed in m s^-1

printf("most probable speed = %.0f m s^-1",Cmp);

Cbar=sqrt((8*R*T)/(%pi*mew)); //Mean speed in m s^-1

printf("\nMean speed = %.0f m s^-1",Cbar);

Crms=sqrt((3*R*T)/(mew)); //Root mean square speed in m s^-1

printf("\nroot mean square speed = %.0f m s^-1",Crms);
