clear
clc
disp('Ex-15.2');
mp=938.280;   //mass of various particles
me=0.511;
m2h=1875.628;
mic2=2*mp;           //mass energy on L.H.S
mfc2=m2h+me;  //mass energy on R.H.S
Q=mic2-mfc2;    //Q value of reation
pc=Q;
mc2=1875.628;
K=(pc^2)/(2*mc2);     //kinetic threshold energy
Emax=Q-K;        //maximum energy 
printf('The maximum neutrino energy is %.3f MeV',Emax);