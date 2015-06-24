// Scilab Code Ex 10.10 Electron mobility inside conductors : Page-346 (2010)
e = 1.6D-19;      // Electronic charge, in C
m = 9.1D-31;      // Eelctronic mass, in kg
res = 1.54D-8;    // Electrical resistivity of silver, in ohm metre
E = 100;          // Electric field applied along the length of the wire, V/m
n = 5.8D+28;      // Number of conduction electrons per unit volume, per metre cube
mu = 1/(res*n*e); // Mobility of electron through silver, metre square per volt-sec
vd = mu*E;        // Average drift velocity of electrons, m/s
t = mu*m/e;       // Relaxation time of the electron, s
disp(mu, "The mobility of electron through silver, in metre square per V-s, is : ");
disp(vd, "The average drift velocity of electrons, in m/s, is : ");
disp(t, "c ");
// Result
// The mobility of electron through silver, in metre square per V-s, is :
//        0.0069973
// The average drift velocity of electrons, in m/s, is :
//        0.6997313
// The average drift velocity of electrons, in m/s, is :
//        3.980D-14