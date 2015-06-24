clear;
clc;

// Illustration 6.7
// Page: 358

printf('Illustration 6.7 -  Page: 358\n\n');

// solution
//*****Data*****//
// a-benzene   b-toluene
xa = 0.46;
xb = 0.54;
Tb = 395; // [bottom temp., K]
Tt = 360; // [top temp., K]
alphab = 2.26;
alphat = 2.52;
D = 1.53; // [diameter of column, m]
f = 0.81; // [flooding]
deltaP = 700; // [average gas-pressure drop, Pa/tray]
//*****//

Tavg = (Tb+Tt)/2; // [K]
alpha_avg = (alphab+alphat)/2;

printf('Illustration 6.7(a) -  Page: 359\n\n');
// Solution(a)

// Constants for components 'a' and 'b'
Aa = 4.612;
Ba = 148.9;
Ca = -0.0254;
Da = 2.222*10^-5;
ua = exp(Aa+Ba/Tavg+Ca*Tavg+Da*Tavg^2); // [cP]

Ab = -5.878;
Bb = 1287;
Cb = 0.00458;
Db = -0.450*10^-5;

ub = exp(Ab+Bb/Tavg+Cb*Tavg+Db*Tavg^2); // [cP]

// At the average column temperature 
ul = ua^xa*ub^xb; // [cP]
K = alpha_avg*ul;
// From the O’Connell correlation
Eo = 0.52782-0.27511*log10(K) + 0.044923*(log10(K))^2;
printf("The overall tray efficiency using the O’Connell correlation is %f.\n\n",Eo);

printf('Illustration 6.7(b) -  Page: 359\n');
// Solution(b)

Nideal = 20; // [number of ideal stages]
Nreal = Nideal/(Eo); // [nnumber of real stages]
disp(Nreal);
// Since real stages cannot be fractional, therefore
Nreal = 34; 
// From Table 4.3 tray spacing 
t = 0.6; // [m]
// Adding 1 m over the top tray as an entrainment separator and 3 m beneath // the bottom tray for bottoms surge capacity, the total column height is
Z = 4+Nreal*t; // [m]
printf("The number of real trays and the total tower height are %f and %f m respectively.\n\n",Nreal,Z);

printf('Illustration 6.7(c) -  Page: 359\n\n');
// Solution(c)

// Total gas pressure drop
deltaPc = deltaP*Nreal/1000; // [kPa]
printf("The total gas-pressure drop through the column is %f kPa.\n\n",deltaPc); 