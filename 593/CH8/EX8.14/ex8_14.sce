clear;
//clc();

// Example 8.14
// Page: 198
printf("Example-8.14  Page no.-198\n\n");

//***Data***//

P = 100;//[psia]
// Composition in liquid phase is 
x_a = 0.05;// Mole fraction of methane 
x_b = 0.40;// Mole fraction of butane 
x_c = 0.55;// mole fraction of pentane

//  We have to take the help of the following equations
// ( x_a + x_b + x_c ) = 1       and   ( y_a + y_b + y_c ) = 1
// ( y_a/x_a ) = K_a;    ( y_b/x_b ) = K_b;       and   ( y_c/x_c ) = K_c;

// We draw a straight line across figure 8.20 from 100psia to different temperatures like 0,5,10,15,20,25,30 degF and read the three K factors 
T = [15.8 0.087 0.024;16 0.105 0.026;16.2 0.115 0.03;16.8 0.13 0.035;17.2 0.15 0.04;17.8 0.17 0.045;18.2 0.175 0.0472727];
printf(" Calculations for the various assumed temperatures are given in the table below\n\n");
printf(" Temperature \t\t    y_a \t\t   y_b \t\t\t   y_c \t\t\t   y \n\n");

T_b = 0;//[F] Bubble point
j=1;
for i = 1:7
        y_a = x_a*T(i,j);
        y_b = x_b*T(i,j+1);
        y_c = x_c*T(i,j+2);
        y = y_a + y_b + y_c;
        T_b = T_b + 5;
        printf(" %f \t\t %f \t\t %f \t\t %f \t\t %f\n ",T_b,y_a,y_b,y_c,y);
    end
printf(" \n For the temperature 30 deg F the summation of the mole fractions in the vapor phase is close enough to unity, so, bubble point is 30 degF\n");
printf(" And compositions in the vapor phase are the values given in the above table corresonding to the temperature 30 deg F, i.e.\n\n");
printf(" y_methane = %f \n y_butane = %f \n y_pentane = %f",y_a,y_b,y_c);

