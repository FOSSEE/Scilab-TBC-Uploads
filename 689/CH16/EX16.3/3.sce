clc; funcprot(0);
//Example 16.3 Horsepower required at sea level
// Initialisation of variables
W = 11200;
S = 365;
rho = 0.002378;

// Calculations
Cl = poly(0,'Cl');
Cd = 0.023 + 0.0445*Cl^2;
Coeff_Velo = 19.77*sqrt(W/S);               //Using equtaion 8.5.2
Coeff_HP = W^1.5/(550*sqrt(rho*S/2));       //Using equation 8.16.1
Cl = [0.2 0.3 0.4 0.6 0.8 1.0 1.2 1.4]'; 


Result = zeros(8,8);
Result(:,1) = Cl;
Result(:,2) = Cl^2;
Result(:,3) = sqrt(Cl);
Result(:,4) = Cl^1.5;
Result(:,5) = horner(Cd,Cl);
Result(:,6) = diag(diag(Result(:,5))*inv(diag(Result(:,4))));
Result(:,7) = Coeff_HP*Result(:,6);
Result(:,8) = Coeff_Velo*diag(inv(diag(Result(:,3))));

disp(Result,"!!Cl       Cl^2   Cl^0.5       Cl^1.5       Cd          Cd/Cl^1.5    Hp req       V(mph)    !!") ;
clf();
plot2d(Result(:,8),Result(:,7));
xlabel("Miles Per Hour");
ylabel("HorsePower");
title("Power Curves ");
set(gca(),"grid",[1 1])
 
