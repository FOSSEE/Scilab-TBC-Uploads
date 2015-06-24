clear all; clc;

disp("Scilab Code Ex 11.2 : ")

//Given:
l = 200/1000;//m
t = 30/1000;//m
sigma_allow = 12; //MPa
tou_allow = 0.8; //MPa
V_nail = 1.50; //kN
l_bc = 2; //m
l_cd = 2; //m

//Shear and Moment Diagrams:
V_max = 1.5; //kN
M_max = 2; //kNm

//Bending Stress:
y1 = l/2;
A1 = l*t;
y2 = l+(t/2);
A2 = t*l;
y_dash = (y1*A1 + y2*A2)/(A1 + A2);

I1 = (t*l^3)/12 + (t*l*(y_dash - y1)^2);
I2 = (l*t^3)/12 + (t*l*(y2 - y_dash)^2);
I =I1 + I2;

c = y_dash;
sigma = (M_max*c)/(I);
flag1 = 0;
sigma_allow = sigma_allow*1000; //kPa

if(sigma<sigma_allow)
    flag1 = 1;
end

//Shear Stress:
y3 = y_dash/2;
A3 = y_dash*t;
Q = y3*A3;

tou = (V_max*Q)/(I*t);
tou_allow = tou_allow*1000; //kPa
flag2 =0;

if(tou<tou_allow)
    flag2 = 1;
end

//Nail Spacing:
y4a = (l+t-y_dash);
y4 = y4a - (t/2);
A4 = l*t;
Q4 = y4*A4;
V_bc = 1.5; //kN
V_cd = 1; //kN

q_bc = (V_bc*Q4)/I;
q_cd = (V_cd*Q4)/I;

s_bc = (V_nail)/(q_bc);
s_cd = (V_nail)/(q_cd);

chosen_bc = 150; //mm
chosen_cd = 250; //mm

if(flag1==1 & flag2==1)
     
    printf('\n\nThe design is safe in bending and shear.');
    printf('\nThe calculated nail spacing BC = %1.3f m',s_bc);
    printf('\nThe calculated nail spacing CD = %1.3f m',s_cd);
    printf('\nThe chosen nail spacing BC     = %1.0f mm',chosen_bc);
    printf('\nThe chosen nail spacing CD     = %1.0f mm',chosen_cd);
end

//--------------------------------------------------------------------------END-------------------------------------------------------------------------------------










