clear all; clc;

disp("Scilab Code Ex 6.25 : ")

//Given:
ri = 200/1000; //m
r1 = 250/1000; //m
ro = 280/1000; //m
M = 4; //kNm
a = 0.05; //m
h = 0.03; //m

//Section Properties:
A1 = a^2 ;
A2 =  (0.5*a*h);
A = A1+A2;
r_avg1 = (r1+ri)/2;
r_avg2 = r1+(h/3);
r_bar =((r_avg1*A1)+(r_avg2*A2))/A;

int_dA_r1 = a*log(r1/ri);
int_dA_r2 = (a*ro*log(ro/r1))/(ro-r1) - a;
R = (A)/(int_dA_r1+ int_dA_r2);
k= r_bar - R;

//Normal Stress:
sigma_B = (-M*(R-ri))/(A*ri*k*1000);
sigma_A = (-M*(R-ro))/(A*ro*k*1000);

sigma = max(abs(sigma_B),abs(sigma_A))


//Display:
    
 printf("\n\nThe maximum normal stress in the bar = %1.0f MPa',sigma);
 
 //------------------------------------------------------------------------END---------------------------------------------------------------------------------------


