eps_e = 0.27; P = 1 ;
K = (4*eps_e^2*P)/(1-eps_e^2);
P1 = 100/760; // in Pa
eps_e_1 = sqrt((K/P1)/(4+(K/P1)));
T1 = 318; T2 = 298;
R = 8.3143; K1 = 0.664; K2 = 0.141;
dH = 2.30*R*((T1*T2)/(T1-T2))*(log(K1/K2));
disp("atm",K,"K is")
disp(eps_e_1,"epislon is ")
disp("kJ/kg mol",dH,"The heat of reaction is")
