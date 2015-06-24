//Example 1.5

clear;

clc;

Rf=100*10^3;//Assuming Feedback Resistance Rf

Vee=-15;

//Imposing Vo=-(Rf/R1)Vi-(Rf/R2)(-15)=-10Vi+5

R1=Rf/10;

R2=(Rf*15)/5;

printf("Designed Function Generator :");

printf("\n R1=%.2f kohms",(R1/1000));

printf("\n R2=%.2f kohms",(R2/1000));

printf("\n Rf=%.2f kohms",(Rf/1000));