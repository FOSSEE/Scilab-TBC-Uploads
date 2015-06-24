V = 100; // volatage supply in volts
Rs = 40; //resistance in series in ohms 
// parallel resistances in ohms
Rp1 = 33.33;
Rp2 = 50;
Rp3 = 20;
Rpinv = (1/Rp1)+(1/Rp2)+(1/Rp3); //reciprocal of equivalent resistance in  parallel
Rp = 1/Rpinv; // equivalent esistance in parallel 
Vbc = V*(Rp/(Rs + Rp)); // potential difference across bc 
disp(Vbc,"potential difference across bc = ")