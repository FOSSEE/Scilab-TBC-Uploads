clc; funcprot(0);//Example 17.1 

//Initializing the variables
g = 9.81;
rho = 1000;
rhoHg = 13.6*rho;
d1 = 0.075;
d2 = 0.025;
Pi = 0.250;
Pt = 0.150;
P_Hg = 0.760;
rho1 = 1.6;
gma = 1.4;

//Calculations
P1 = (Pi+P_Hg)*rhoHg*g;
P2 = (Pt+P_Hg)*rhoHg*g;
rho2 = rho1*(P2/P1)^(1/gma);

function[f] = velocity(V)
    f(1) = d2^2*V(2)*rho2-d1^2*V(1)*rho1;
    f(2) = 0.5*(V(2)^2 - V(1)^2)*((gma-1)/gma)*(rho2*rho1/(rho2*P1-rho1*P2))-1;
endfunction
V = [0 0];
Velo = fsolve(V,velocity);
Flow = %pi*d1^2/4*Velo(1);
disp(Flow, "Volume of flow (m3/s):");