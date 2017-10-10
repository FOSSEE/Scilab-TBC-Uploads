clc;
f=50; // frequency in hertz
B=1.2; // maximum flux density in Tesla
A=75*10^-4; // net core area in m^2
E1=220; // primary side voltage in volts
E2=600; // secondary side voltage in volts
E3=11; // tertiary side voltage in volts
n3=round(E3/2); // number of turns in half of the tertiary winding
Et=round(sqrt(2)*%pi*50*B*A); // calculating emf per turn
N3=Et*n3; // total number of turns in tertiary winding
printf('total number of turns in  tertiary winding is %f\n',N3);
N2=round(E2*(n3/E3)); // total number of turns in secondary winding
printf('total number of turns in  secondary winding is %f\n',N2);
N1=round(E1*(n3/E3)); //  total number of turns in secondary winding
printf('total number of turns in primary winding is %f',N1);
