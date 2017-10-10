
clc;
f=50; // frequency in Hz
Et=13; // emf per turn in volts
E1=2310; // primary voltage in volts
E2= 220; // secondary voltage in volts
B=1.4; // maximum flux density in Tesla
// calculating the number of turns in primary and secondary side
N2= round(E2/Et); //secondary side turns
printf('Number of secondary turns is %f\n',N2);
N1=round(N2*(E1/E2));// primary side turns
printf('Number of primary turns is %f\n',N1);
disp('The value of primary turns does not satisfy with the'); 
disp('value of secondary turns so taking value of N2=18(next nearest integer)');
N2=18; // new value of secondary turns
N1=18*(E1/E2);
printf('Number of primary turns is %f\n',N1);
printf('Number of secondary turns is %f\n',N2);
// calculating net core area 
A=(220/(18*sqrt(2)*%pi*B*50))*10^4; // where N2=18
printf('Net area of core is %f cm^2',A);
