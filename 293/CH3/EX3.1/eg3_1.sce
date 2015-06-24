V = 100; // volatage supply in volts
Rs = 40; //resistance in series in ohms 
// parallel resistances in ohms
Rp1 = 33.33;
Rp2 = 50;
Rp3 = 20;
Rpinv = (1/Rp1)+(1/Rp2)+(1/Rp3); //reciprocal of equivalent resistance in  parallel
Req = Rs + (1/Rpinv) ;
I = V/Req; //current flowing from the voltage source in amps
disp(I,"current flowing from the voltage source(in amps) = ")