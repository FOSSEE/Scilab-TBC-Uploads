clear all; clc;

disp("Scilab Code Ex 6.22 : ")

//Given:
sigma_allow_st = 168; //MPa
sigma_allow_w = 21; //MPa
Est = 200; //GPa
Ew = 12; //GPa
Iz = 7.93*10^6; //mm^4
A1 = 5493.75; //mm^2
t = 5; //mm
h = 100; //mm

//Without Board:
c = h+t;
M1 = (sigma_allow_st*Iz)/(c*10^6);

//With Board:
bw = 300;//mm
n = (Ew/Est); 
bst = n*bw;

//For the transformed section:
y1 = 0;
y2 = 55;
A2 = bst*h;

y_bar = (y1*A1 + y2*A2)/(A1+A2);

I1 = Iz + A1*y_bar^2;
I2 = (1/12)*(bst*h^3) + (A2*(y2-y_bar)^2);
I = I1+I2;

c = c+y_bar;
M2 = (sigma_allow_st*I)/(c*10^6);

cw = c - y_bar;
Mw = (sigma_allow_w*I)/(n*cw*10^6);

M = min(Mw,M2);

//Display:

  printf("\n\nThe maximum bending moment without re-inforcement = %1.3f kNm',M1);
 printf("\nThe maximum bending moment with re-inforcement     = %1.2f kNm',M);
 
 //------------------------------------------------------------------------END---------------------------------------------------------------------------------------


