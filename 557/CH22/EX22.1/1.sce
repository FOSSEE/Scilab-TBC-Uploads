 clc; funcprot(0); //Example 22.1

//Initializing the variables
Q = 5;
R1 = 1.5/2;
R2 = 2/2; 
w = 18;
rho = 1000;
rhoA = 1.2;
Hth = 0.017;
g=9.81;

//Calculations
A = %pi*(R2^2-R1^2);
Vf = Q/A;
Ut = w*R2;
Uh = w*R1;
B1t = acotd(Ut/Vf);
B1h = acotd(Uh/Vf);
E = Hth*rho/rhoA;
function[y] = Beta(u)
    y = acotd((u-E*g/u)/Vf);
endfunction
B2t = Beta(Ut); 
B2h = Beta(Uh);

disp(B2h,"At Hub :",B2t,"At tip :","!----Blade Outlet Angles (Degrees)----!",B1h,"At Hub :",B1t,"At tip :","!----Blade Inlet Angles----!");