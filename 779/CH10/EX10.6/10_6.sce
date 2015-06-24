P0 = 1000;
T0 = 3; 
V0 = 0.001;
R = 287;
n = (P0*V0)/(R*T0); // Number of moles
// Process ab
Wab = 0;
cv = (3/2)*R;
Ta = T0; Tb = 300;
Qab = n*cv*(Tb-Ta);
Ua = 0; // Given internal energy
Ub = Qab+Ua;
Uab = Ub-Ua;
// Process bc
Qbc = 0; Uc = 0; Ubc = Uc-Ub;
Wbc = -Ubc;
// Process ca
Tc = Ta;
g = 5/3; // gamma
Vcb = (Tb/Tc)^(3/2); // Vc/Vb
Wca = -n*R*Tc*log(Vcb);
Qca = Wca ;
Uca = 0;
//
disp("J",Wab+Wbc+Wca,"Work done in the cycle is") 
disp("J",Uab+Ubc+Uca,"Internal energy change in the cycle is") 
disp("J",Qab+Qbc+Qca,"Heat transfer in the cycle is") 
// Part (b)
e = (Qab+Qca)/Qab;
disp("%",e*100,"Thermal efficiency of the system is")
