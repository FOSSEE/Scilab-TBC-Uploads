clc; funcprot(0); 
//Example 24.1 

//Initializing the variables
H_at = 10.3;
Hs = 1.5;
Hd = 4.5;
Ls = 2;
Ld = 15;
g = 9.81;
Ds = 0.4; // Diameter of stroke
Db = 0.15;    // Diameter of bore
Dd = 0.05;     // Diameter of discharge and suction pipe
nu = 0.2;
f = 0.01;
abs_pump_pressure = 2.4;

//Calculations
A = %pi*(Db)^2/4;
a = %pi*(Dd)^2/4;
r = Ds/2;
W = 2*%pi*nu;
Hsf = 0; 
function[y] = H_suck(n) // n for checking the sign of Hsi = 4fl/2dg *(vA/a)^2
y = H_at - Hs +(-1)^n*(L/g)*(A/a)*W^2*r; 
endfunction

function[y] = H(n,DischargeOrSuction)// n for checking the sign of Hsi = 4fl/2dg *(vA/a)^2, for suction 1 and for discharge2
    if(DischargeOrSuction == 1) then
        y = H_at - Hs +(-1)^n*(Ls/g)*(A/a)*W^2*r;
    elseif(DischargeOrSuction == 2) then
        y = H_at + Hd +(-1)^n*(Ld/g)*(A/a)*W^2*r;
    else disp("There is something wrong :")
    end
endfunction

function[y] = H_mid(DischargeOrSuction,uA)// n for checking the sign of Hsi = 4fl/2dg *(vA/a)^2, for discharge 1 and for suction 2
    
    if(DischargeOrSuction == 1) then
        Hsf = 4*f*Ls/(2*Dd*g)*(uA/a)^2;
        y = H_at - Hs - Hsf;
    elseif(DischargeOrSuction == 2) then
        Hsf = 4*f*Ld/(2*Dd*g)*(uA/a)^2;
        y = H_at + Hd + Hsf;
    else disp("There is something wrong :")
    end
endfunction

Hs_start = H(1,1);     // Inertia head negative hence n = 1
Hs_end = H(2,1);     // Inertia head positive hence n = 2
Hd_start = H(1,2);
Hd_end = H(2,2);
u = W*r;
Hs_mid = H_mid(1,u*A);
slip = 0.04;
Hd_mid = H_mid(2,u*A);
suction = [Hs_start Hs_end Hs_mid];
discharge = [Hd_start Hd_end Hd_mid];
header = ["   Start(m)","   End(m)","     Mid(m)"];
W_max = sqrt((abs_pump_pressure - H_at + Hs)*(g/Ls)*(a/A)*(1/r));
W_max_rev = W_max/(2*%pi)*60; // maximum rotation speed in rev/min
disp(W_max_rev,"Drive speed for s eperation (rev/min) :","!----Part(c)----1",discharge,header,"!----Part(b)----! Head at",suction,header,"!----Part(a)----! Head at");