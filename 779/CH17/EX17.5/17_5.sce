Ax = 18.75; A_ = 12.50; // A_= A*
AA_ = 1.5; // A/A*
Mx = 1.86; Pxox = 0.159; R = 0.287;
Pox = 0.21e03; // in kPa
Px = Pxox*Pox;
// from the gas table on normal shock
Mx = 1.86; My = 0.604; Pyx = 3.87; Poyx = 4.95; Poyox = 0.786;
Py = Pyx*Px;
Poy = Poyx*Px;
My = 0.604;
Ay_ = 1.183;
A2 = 25; Ay = 18.75;
A2_ = (A2/Ay)*Ay_;
// From isentropic table 
M2 = 0.402;
P2oy = 0.895;
P2 = P2oy*Poy;
syx = -R*log(Poy/Pox); // sy-sx
disp(M2,"Exit mach number is M2")
disp("kPa",P2,"Exit pressure is")
disp("kPa",Pox-Poy,"Exit Stagnation pressure is")
disp("kJ/kg K",syx,"Entropy increase is")