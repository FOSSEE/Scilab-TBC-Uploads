//computation of equilibrium concentration

clear;
clc;

printf("\t Example 14.9\n");

Kc=54.3;
H2i=0.5;//initial moles of H2
I2i=0.5;//initial moles of I2

//Let us assume that x moles have reacted, so, HI=2x, H2=0.5-x, I2=0.5-x, when we substitute in Kc=(HI)^2/(H2)*(I2) we get 54.3=(2x)^2/((0.5-x)*(0.5-x)) taking root we get 7.37=2*x/0.5-x
x=0.393;//from the above equation
H2=0.5-x;
I2=0.5-x;
HI=2*x;

printf("\t the equilibrium concentration of H2 is : %4.3f M\n",H2);
printf("\t the equilibrium concentration of I2 is : %4.3f M\n",I2);
printf("\t the equilibrium concentration of HI is : %4.3f M\n",HI);

//End
