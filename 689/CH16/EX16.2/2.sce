clc; funcprot(0);
//Example 16.2 Horsepower required at sea level
// Initialisation of variables
W = 4225;
b1 = 38;
b2 = 35;
Gap = 5.35;
S1 = 214;
S2 = 150;
Dp = 9.4;           // Parasite drag equivalent

// Calculations
mu =b2/b1;
Gab_MeanSpan = 2*Gap/(b1+b2);
S = S1 + S2;
sigma = 0.56;                   //From fig 10.10
r = S2/S1;
K = mu*(1+r)/sqrt(mu^2 + 2*sigma*r*mu + r^2);
EMAR = K^2*b1^2/S;
Coeff_Cdi = 1/(%pi*EMAR);
Cdp = 1.28*Dp/S;
Coeff_Cl = W/(0.00256*S)
Coeff_HPTot = 0.00256*S/375;

V = [54 60 70 80 90 100 110 120 130 140 150];
Cl = Coeff_Cl*diag(inv(diag(V^2)));
Cd0 = [0.043 0.019 0.013 0.011 0.010 0.010 0.010 0.009 0.009 0.009 0.009]
Cdi = Cl^2*Coeff_Cdi;
Cd = Cd0+Cdi'+Cdp;
Hp = Coeff_HPTot*diag(diag(V^3)*diag(Cd));
Result = zeros(11,6);
Result(:,1) = V';
Result(:,2) = Cl;
Result(:,3) = Cd0';
Result(:,4) = Cdi;
Result(:,5) = Cd';
Result(:,6) = Hp;

disp(Result,"!! V       Cl           Cd0      Cdi          Cd           HP Req   !!") ;
clf();
plot2d(Result(:,1),Result(:,6));
xlabel("Miles Per Hour");
ylabel("HorsePower");
title("Horsepower required for various airspeeds ");
set(gca(),"grid",[1 1])
 
