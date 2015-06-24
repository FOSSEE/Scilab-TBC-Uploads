
//Ex1_12

clc;

//Given:
mh=1.0078;
mn=1.0087;
ABe=8.0053; // atomic mass of beryllium

//solution:

B1=(4*mh+4*mn-ABe)*931; // in MeV
Bh=B1/ABe;
printf("\n The mean binding energy of Be atom in MeV is = %f ",Bh)

disp("From previous problem we have the avg. binding energy of helium atom is        7.08 MeV, Hence Be is unstable to fission into 2 alphas")
