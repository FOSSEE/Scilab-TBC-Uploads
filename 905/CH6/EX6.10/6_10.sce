clear;
clc;

// Illustration 6.10
// Page: 371

printf('Illustration 6.10 -  Page: 371\n\n');

// solution
//*****Data*****//
// A-toluene   B-1,2,3-trimethyl benzene   C-benzene
// Solution of above three are ideal 
// Feed
za = 0.40;
zb = 0.30;
zc = 0.30;
// Bottom 
FRAd = 0.95; // [recovery of toluene in distillate]
FRBw = 0.95; // [recovery of 1,2,3-trimethyl benzene in the bottom]
P = 1; // [atm]

// First estimate of distillate composition 
xc = 40/70;
xa = 30/70;
xb = 0;
// The bubble point temperature for this solution is 
Tb = 390; // [K]
// The corresponding parameters for benzene, toluene and 1,2,3-trimethyl benzene
// For toluene
Tc_a = 568.8; // [K]
Pc_a = 24.9; // [bar]
A_a = -7.912;
B_a = 1.380;
C_a =-3.804;
D_a = -4.501;
// For 1,2,3-trimethyl benzene
Tc_b = 664.5; // [K]
Pc_b = 34.5; // [bar]
A_b = -8.442;
B_b = 2.922;
C_b =-5.667;
D_b = -2.281;
// For benzene
Tc_c = 540.3; // [K]
Pc_c = 27.4; // [bar]
A_c = -7.675;
B_c = 1.371;
C_c =-3.536;
D_c = -3.202;


// At the estimated reboiler temperature of 449.3 K
Tr = 449.3; // [K]
// P = [Toluene;1,2,3-trimethyl benzene;Benzene]
P1 = zeros(3,6);
// P = [Tc Pc A B C D]
P1 = [568.8 24.9 -7.912 1.380 -3.804 -4.501;664.5 34.5 -8.442 2.922 -5.667 2.281;540.3 27.4 -7.675 1.371 -3.536 -3.202;];

for i=1:3
    P1(i) = P1(i,2)*exp((P1(i,3)*(1-Tr/P1(i,1))+P1(i,4)*(1-Tr/P1(i,1))^1.5+P1(i,5)*(1-Tr/P1(i,1))^3+P1(i,6)*(1-Tr/P1(i,1))^6)/(1-(1-Tr/P1(i,1))));
end
PA1 = P1(1); // [bar]
PB1 = P1(2); // [bar]
PC1 = P1(3); // [bar]
alphaAB1 = PA1/PB1;
alphaCB1 = PC1/PB1;

// At the estimated distillate temperature of 390 K
Td = 390; // [K]
// P = [Toluene;1,2,3-trimethyl benzene;Benzene]
P2 = zeros(3,6);
// P = [Tc Pc A B C D]
P2 = [568.8 24.9 -7.912 1.380 -3.804 -4.501;664.5 34.5 -8.442 2.922 -5.667 2.281;540.3 27.4 -7.675 1.371 -3.536 -3.202;];

for i=1:3
    P2(i) = P2(i,2)*exp((P2(i,3)*(1-Td/P2(i,1))+P2(i,4)*(1-Td/P2(i,1))^1.5+P2(i,5)*(1-Td/P2(i,1))^3+P2(i,6)*(1-Td/P2(i,1))^6)/(1-(1-Td/P2(i,1))));
end

PA2 = P2(1); // [bar]
PB2 = P2(2); // [bar]
PC2 = P2(3); // [bar]
alphaAB2 = PA2/PB2;
alphaCB2 = PC2/PB2;

// The geometric-average relative volatilities are
alphaAB_avg = sqrt(alphaAB1*alphaAB2);
alphaCB_avg = sqrt(alphaCB1*alphaCB2);

// From equation 6.66
Nmin = log(FRAd*FRBw/((1-FRAd)*(1-FRBw)))/log(alphaAB_avg);

// From equation 6.67
FRCd = alphaCB_avg^Nmin/((FRBw/(1-FRBw))+alphaCB_avg^Nmin); // [fractional recovery of benzene in the distillate]

printf("The number of equilibrium stages required at total reflux is %f.\n",Nmin);
printf("The recovery fraction of benzene in the distillate is %f.\n\n",FRCd);
printf('Thus, the assumption that virtually all of the LNK will be recovered in the distillate is justified.');