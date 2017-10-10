//page 90
clc;funcprot(0);//EXAMPLE 4.3
// Initialisation of Variables
a01=0.2866;............//The Lattice parameter of BCC in nm
a02=0.3571;............//The Lattice parameter of FCC in nm
r=0.071;............//Radius of carbon atom in nm
ni1=12;..........//No. of interstitial sites per unit   cell for BCC
ni2=4;...........//No. of interstitial sites per unit   cell for FCC
//CALCULATIONS
Rb=(sqrt(3)*a01)/4;.......//Radius of iron atom in nm
Ri1=sqrt(0.3125*a01^2)-Rb;.......// Interstitial Radius  of iron atom in nm
Rf=(sqrt(2)*a02)/4;.........//the radius of the iron atom in nm
Ri2=(a02-(2*Rf))/2;................//the radius of the interstitial site in nm
%C1=(ni1/(ni1+2))*100;...........//The atomic percentage  of carbon contained in the BCC iron in percent
%C2=(ni2/(ni2+4))*100;...........//The atomic percentage  of carbon contained in the FCC iron in percent
disp(Rb,"Radius of iron atom in nm")
disp(Ri1,"Interstitial Radius  of iron atom in nm:")
disp(Rf,"the radius of the iron atom in nm:")
disp(Ri2,"the radius of the interstitial site in nm:")
disp(%C1,"The atomic percentage  of carbon contained  in  BCC  iron in percent:")
disp(%C2,"The atomic percentage  of carbon contained  in  FCC  iron in percent:")
