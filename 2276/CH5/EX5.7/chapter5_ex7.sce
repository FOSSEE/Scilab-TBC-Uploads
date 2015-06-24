clc
clear

//input
r=32;//resistance in branch 1 in ohms
l=0.08;//inductance in branch 2 in henry
c=200*(10^-6);//capacitance in branch 3 in farad
//braches 1,2 and 3 are in parallel
v=240;//supply voltage in volts
f=50;//supply frequency in hertz

//calculations
g1=1/r;//conductance of branch 1 in siemens
b2=-1/(2*%pi*f*l);//susceptance of branch 2 in siemens
b3=2*%pi*f*c;//susceptance of branch 3 in siemens
bt=b2+b3;//total susceptance in siemens
yt=((g1^2)+(bt^2))^0.5;//total admittance in mho
it=v*yt;//total current in amperes
phi=(180/%pi)*acos(g1/yt);//phase angle in degrees

//output
mprintf('the total current will be %3.2f A leading on the voltage by %3.1f degrees',it,phi)
