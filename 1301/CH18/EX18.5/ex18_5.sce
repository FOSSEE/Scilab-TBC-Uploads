clc;
e=1.6*10^-19;      //charge
c=3*10^8;         //velocity in m/sec
ke=106*10^6;            //kinetic energy in eV
KE=ke*e;         //calculating kinetic energy
disp(KE,"Kinetic Energy in Joule = ");     //displaying result
m=KE/(c*c);        //Einstein's equation
disp(m,"Mass in kg = ");      //displaying result
disp(m/(9.1*10^-31),"Times electron mass = ");  //displaying result