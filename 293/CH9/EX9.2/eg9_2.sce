// Quiescent point
Idq = 0.0034; // drain current
Vdq = 15; // drain voltage
Vgq = 1; // gate voltage

Vdd = 24; //drain supply voltage 

Rs = Vgq/Idq;
disp(Rs,"The value of self bais source resistance is(in ohm): ")

Rd = (Vdd - Vdq)/Idq ; 
disp(Rd,"The value of drain load resistance is(in ohm): ")