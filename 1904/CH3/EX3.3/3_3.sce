//To determine the service drop and the length of the cable
//Page 121
clc;
clear;

Vx=120; //Low End Voltage
//When Service drop is Zero
IfLVn=8181.7*exp(-1*%i*34.3*%pi/180); //Line to Neutral Vault Current
IfLVl=5649*exp(-1*%i*40.6*%pi/180); //Line to Line Fault Current

Ral4=2.58; //#4 AWG Aluminium Conductor Resistance per mile
Ralinf=1.03; //#1/0 AWG Aluminium Conductor Resistance per mile

//Impedances when Service drop is zero, suffix l denotes line to line
//Suffix n denotes line to neutral
Zl0=(2*Vx)/IfLVl;
Zn0=(Vx)/IfLVn;

//When there is R service drop
//Magnitudes of Line to Line and Line to Earth fault currents are equal

R=poly(0,'R'); //Variable Value
//Effective Impedances
Zl=Zl0+(2*R);
Zn=Zn0+(2*R);
//Fault Currents
Ifl=2*Vx/Zl;
Ifn=Vx/Zn;
//Magnitudes of Currents
MIfl=abs(Ifl(2))/abs(Ifl(3));
MIfn=abs(Ifn(2))/abs(Ifn(3));
DI=MIfl-MIfn;
X=DI(2); //Polynomial Equation to find 'R'

R=roots(X); //Numerical Value

//The Magnitude of R found is Wrong in the Textbook

//Length of service drop cable
SDL4=R/Ral4;
SDLinf=R/Ralinf;

printf('\na) The Value of Service drop in the Cable is %g ohm\n',R)
printf('b) The Length of service drop cable for:\n')
printf('i) #4 AWG Conductor is %g miles\n',SDL4) 
printf('ii) #1/0 AWG Conductor is %g miles\n',SDLinf) 

//Length is printed in Miles
