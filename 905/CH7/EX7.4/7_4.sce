clear;
clc;

// Illustration 7.4
// Page: 439

printf('Illustration 7.4 -  Page: 439\n\n');

// solution
//*****Data*****//
// C-acetic acid    A-water
// f-feed   r-raffinate   s-solvent
f = 1000; // [kg/h]
xCf = 0.35; // [fraction of acid]
xAf = 1-xCf; // [fraction of water]
// Solvent is pure
xAr = 0.02;
yCs = 0;
//*****//

printf('Illustration 7.4(a) -  Page: 440\n\n');
// Solution(a)

// From Figure 7.15
xCMmin = 0.144;
// From equation 7.11
Smin = f*(xCMmin-xCf)/(yCs-xCMmin); // [kg/h]
printf("The minimum amount of solvent which can be used is %f kg/h.\n\n",Smin);

printf('Illustration 7.4(b) -  Page: 441\n\n');
// Solution(b)

S = 1.6*Smin; // [kg/h]
// From equation 7.11
xCM = (f*xCf+S*yCs)/(f+S);

// Data for equilibrium line
// Data_eqml = [xCeq yCeq]
Data_eqml = [0.0069 0.0018;0.0141 0.0037;0.0289 0.0079;0.0642 0.0193;0.1330 0.0482;0.2530 0.1140;0.3670 0.2160;0.4430 0.3110;0.4640 0.3620];

// Data for operating line
// Data_opl = [xCop yCop]
Data_opl = [0.02 0;0.05 0.009;0.1 0.023;0.15 0.037;0.20 0.054;0.25 0.074;0.30 0.096;0.35 0.121];


scf(1);
plot(Data_eqml(:,1),Data_eqml(:,2),Data_opl(:,1),Data_opl(:,2));
xgrid();
legend('Equilibrium line,Operating line');
xlabel("wt fraction of acetic acid in water solutions, xC");
ylabel("wt fraction of acetic acid in ether solutions, yC");

// Now number of theoritical stages is determined by drawing step by step  // stairs from xC = 0.35 to xC = 0.02
// From figure 7.16
// Number of theoritical stages 'N' is
N = 8; 
printf("The number of theoretical stages if the solvent rate used is 60 percent above the minimum is %f.\n\n",N);