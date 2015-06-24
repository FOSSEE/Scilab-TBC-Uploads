//computation of equilibrium concentration

clear;
clc;

printf("\t Example 14.10\n");

Kc=54.3;
HIo=0.0224;
H2o=0.00623;
I2o=0.00414;
//let us assume that x moles have reacted, so, HI=HIo+2x, H2=0.00623-x, I2=0.00414-x, when we substitute in Kc=(HI)^2/(H2)*(I2) we get 54.3=(2x+0.0224)^2/((0.00623-x)*(0.00414-x)) simplifying we get 50.3x^2-0.654x+8.98*10^-4=0
a=50.3;
b=-0.654;
c=8.98*10^-4;
x1=(-b+sqrt(b^2-4*a*c))/(2*a);
x2=(-b-sqrt(b^2-4*a*c))/(2*a);
    if(x1>I2o)
        x=x2;
        else x=x1;
    end;

H2=0.00623-x;
I2=0.00414-x;
HI=2*x+0.0224;

printf("\t the equilibrium concentration of H2 is : %4.5f M\n",H2);
printf("\t the equilibrium concentration of I2 is : %4.5f M\n",I2);
printf("\t the equilibrium concentration of HI is : %4.4f M\n",HI);

//End
