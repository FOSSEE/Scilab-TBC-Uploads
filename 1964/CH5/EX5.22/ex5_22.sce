//Chapter-5, Example 5.22, Page 182
//=============================================================================
clc
clear
//INPUT DATA
Z1=7+((%i)*5);//impedance of branch1 in ohms
Z2=10-((%i)*8);//impedance  of branch2 in ohms
V=230;//supply voltage in volts
f=50;//frequency in hz
//CALCULATIONS
Y1=1/(Z1);//admittance of branch1 in mho
Y2=1/(Z2);//admittance of branch2 in mho
Y=Y1+Y2;//admittance of combined circuit
disp(Y);
g=abs(Y);//conductance in mho;
B=atan(imag(Y)/real(Y));//susceptance in mho
I=V*(Y);//current
disp(I);//total current taken from mains in A
z=atan(imag(I)/real(I));
pf=cos(z);//power factor
mprintf("thus conductance and susceptance of the circuit is %1.3f mho and %1.3f mho respectively\n",g,B);
mprintf("power factor is %1.3f lagging",pf)
//=================================END OF PROGRAM======================================================================================================
