clear ;
clc;

// Example 2.9
printf('Example 2.9\n\n');
//Page no. 64
// Solution

// Let component 1 be water and component 2 be HNO3
// Basis 1L solution
c = 15 ;//[g/L]
sg = 1.10 ;
L = 1000 ;//[cubic centimetre]
m1 = 18.0 ;//[g]
m2 = 63.02 ;//[g]
cn2 = (15*1)/(L*sg) ;//[gHNO3/g soln]
// Basis 1g soln
cn1 = 1-cn2 ;// Mass of water in 1 g soln
mg1 = cn1/m1;
mg2 = cn2/m2;
ml_fr1 = mg1/(mg1+mg2);
ml_fr2 = mg2/(mg1+mg2);
printf(' (a) Component   g(per 1g soln)           Mol.Wt.     g mol                Mole fraction\n')
printf('     Water       %.4f                   %.2f       %.3f                %.2f\n',cn1,m1,mg1,ml_fr1);
printf('     HNO3        %.4f                   %.2f       %e        %e\n',cn2,m2,mg2,ml_fr2);
// (b)
cpm = cn2*10^6 ;//[ppm]
printf('\n (b)Ppm of HNO3 in soln. is %.2f ppm.',cpm);