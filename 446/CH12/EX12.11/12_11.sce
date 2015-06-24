clear
clc
disp('Exa-12.11');
Mg=12.000000; //mass of the carbon atom in amu
c2=931.5; 
Eg=4.43;     //given energy of gamma ray 
Mex=Mg+(Eg/c2);     //mass in excited state
Me=0.000549;        //mass of an electron
Q=(12.018613-Mex-2*Me)*c2;     //Q of the particle
printf('The maximum value of kinetic energy is %.2f MeV',Q);
