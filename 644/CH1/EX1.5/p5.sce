//Example 1.5 (a) A rectangular carbon block has dimensions 1.0cmx1.0cmx50cm.(i)What is the resistance measured between the two square ends?  (ii)between two opposing rectangular faces/ resistivity of carbon at 20 degree centigrate is 3.5x10^-5 ohm-m. (b)A current of 5 A exists in a 10 ohm resistance for 4 minutes (i)how many coulombs and (ii)how many  electrons pass through any section of the resistor in this time? charge on electron = 1.6X10^-19 C.
//(a)
p = 3.5*10^-5; // resistivity (ohm-m)
// (i), R=pl/A
A= 10^-4; //area (m^2)
l= 50*10^-2;// length (m)
R= prod([p,(l/A)])
disp(R,"resistance measured between two square ends (in ohms)=")

//(ii),R=pl/A
a = 50*10^-4;// area(m^2)
L = 10^-2;// length(m)
r = prod([p,(L/a)])
disp(r,"resistance measured between two rectangular faces(in ohms)=")

//(b)
clear
i= 5; // current (amps)
R = 10;// resistance (ohms)
t = 4*60;// time (s)
e = 1.6*10^-19;// charge on electron (C)
//(i), Q =it
Q = prod([i,t])
disp(Q,"charge through 10 ohm resistor in 4 minutes(in coulombs)=")

//(ii), Q = ne
n = Q/e
disp(n,"  number of electrons through 10 ohm resistor in 4 minutrs")

  
 