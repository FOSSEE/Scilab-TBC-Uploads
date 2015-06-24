clear;
clc;

// Illustration 9.11
// Page: 542

printf('Illustration 9.11 -  Page: 542\n\n');

// solution
//*****Data*****//
mtc = 0.02; // [mass transfer coefficient, cm/min]
p = 0.03; // [permeance, cm/min]
F = 1; // [cubic m/h]
W = 1000; // [water wash rate, kg/h]
// Density of 25% H2SO4 solution at 298 K is 
d1 = 1175; // [kg/cubic m]
x = 0.25; // [fraction of H2SO4 in solution]
cF = 294; // [kg/cubic m]
//*****//

K = (1/p+1/mtc)^-1; // [overall mass transfer coefficient, cm/min]

// Flow of H2SO4 in feed
F_sul = F*d1*x; // [kg/h]

// For 60% recovery and rest in dialysate
yr = 0.60;
yd = 0.40;
// Transmembrane flow of acid
Ft = F_sul*yr; // [kg/h]
// From the given water transport number, Transmembrane counterflow of water 
Fw = Ft*0.8; // [kg/h]

// Now inlet and outlet concentration  from material balances
// Flow of acid in dialysate
Fad = F_sul*yd; // [kg/h]

// Total dialysate flow
D = F*d1-Ft+Fw; // [kg/h]
x_aD = Fad/D; // [mass fraction of acid in dialysate]
disp(x_aD);
// Density of 10.3 wt % aqueous solution of sulfuric acid at 298K is
d2 = 1064; // [kg/cubic m] 

cR = x_aD*d2; // [kg/cubic m]
// Flow of acid in diffusate
Fd = Ft; // [kg/h]
// Total Diffusate flow
Di = 1000-Fw+Fd; // [kg/h]
x_aDi = Fd/Di; // [mass fraction acid in diffusate]
disp(x_aDi);
// Density of 17 wt % aqueous solution of sulfuric acid at 298 K is
d3 = 1114; // [kg/cubic m]

cP = x_aDi*d3; // [kg/cubic m]
// At the free end of dialyzer 
deltaC1 = cF-cP; // [kg/cubic m]
// At the dialysate end
deltaC2 = cR-0; // [kg/cubic m]
lmdf = (deltaC2-deltaC1)/(log(deltaC2/deltaC1)); // [Log-mean driving force, kg/cubic m]

// Therefore
Am = Fd*100/(K*lmdf*60);

printf("The membrane area required is %f square m.\n\n",Am);