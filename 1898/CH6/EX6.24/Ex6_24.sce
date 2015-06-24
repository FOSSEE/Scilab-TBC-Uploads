clear all; clc;

disp("Scilab Code Ex 6.24 : ")

//Given:
sigma = 140; //Mpa
ri = 90; //mm
ro = 110; //mm
a = 20; //mm

//Section Properties:
 
y = integrate('a*(1/r)','r',ri,ro)
R = (a*a)/y;

r_avg = (ri+ro)/2;
M1 = (-sigma*a*a*ro*(r_avg - R))/(R-ro);
M1 = M1*10^-6;

M2 = (sigma*a*a*ri*(r_avg - R))/(R-ri);
M2 = M2*10^-6;

M = min(M1,M2);

sigma1 = (M*(R - ro))/(a*a*ro*(r_avg - R));

//For a straight Bar:
I = (1/12)*(a*a^3);
c = 10; //mm
M_strt= (sigma*I)/c;
M_strt = M_strt*10^-6;

//Display:
    
 printf("\n\nThe maximum bending moment that can be applied to the bar = %1.3f kNm',M);
 printf("\nThe maximum bending moment that can be applied to a straight bar = %1.3f kNm',M_strt);
 //------------------------------------------------------------------------END---------------------------------------------------------------------------------------




