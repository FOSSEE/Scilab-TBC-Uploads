clc
clear

//input
ra=5;//resistance of inductor in branch a in ohms
la=0.08;//inductance of the inductor in branch a in henry
rb=15;//resistance in branch 2 in ohms
cb=100*(10^-6);//capacitance in branch b in farad
v=240;//supply voltage in volts
f=50;//supply frequency in hertz

//calculations
//branches a and b are in parallel with supply
xa=2*%pi*f*la;//inductive reactance in ohms
za=((ra^2)+(xa^2))^0.5;//impedance in branch a in ohms
xc=1/(2*%pi*f*cb);//capacitive reactance in ohms
zb=((rb^2)+(xc^2))^0.5;//impedance in branch b in ohms
g=(ra/(za^2))+(rb/(zb^2));//total conductance in siemens
b=(-xa/(za^2))+(xc/(zb^2));//total susceptance in siemens
y=((g^2)+(b^2))^0.5;//total admittance in siemens
i=v*y;//total current in amperes
p=v*v*g;//total power taken from the supply in watts

//output
mprintf('the total current and power taken from the supply are %3.2f A and %3.0f W',i,p)
