clear all; clc;

disp("Scilab Code Ex 6.21 : ")

//Given:
M = 2; //kNm
Ew = 12; //GPa
Est = 200; //GPa
bw = 150/1000; //m
t = 20/1000; //m
rib = 9/1000;//m

//Section Properties:
n = (Ew/Est);
bst = n*bw;

y1 = t/2;
A1 = t*bw;
y2 = bw/2 + t;
A2 = rib*bw;

y_bar = (y1*A1 +y2*A2)/(A1+A2);

I1 = (1/12)*(bw)*(t^3) + A1*(y_bar - y1)^2;
I2 = (1/12)*(rib)*(bw^3) + A2*(y2-y_bar)^2;
Ina = I1+I2;

//Normal Stress:
sigma_B = (M*(bw+t-y_bar))/(Ina*1000);
sigma_C = (M*(y_bar))/(Ina*1000);

//Normal Stress in the wood:
sigmaB = n*sigma_B;

//Display:

    
 printf("\n\nThe normal stress at point B = %1.1f MPa',sigma_B);
 printf("\nThe normal stress at point C = %1.2f MPa',sigma_C);
 printf("\nThe normal stress at point B in the wood = %1.2f MPa',sigmaB);
 
 //------------------------------------------------------------------------END---------------------------------------------------------------------------------------

