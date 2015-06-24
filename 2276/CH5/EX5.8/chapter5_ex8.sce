clc
clear

//input
r1=100;//resistance in branch 1 in ohms
r2=10;//resistance in branch 2 in ohms
l2=0.07;//inductance in branch 2 in henry
r3=10;//resistance in branch 3 in ohms
c3=100*(10^-6);//capacitance in branch 3 in farad
//branches 1,2 and 3 are in parallel with each other
v=250;//supply voltage in volts
f=50;//supply frequency in hertz

//calculations
it=v/r1;//total current in branch 1 in amperes
ii1=it;//since resistive branch
iq1=0;//since resistive branch
z2=((r2^2)+((2*%pi*f*l2)^2))^0.5;//impedance of branch 2 in ohms
i2=v/z2;//current in branch 2 in amperes
cos2=r2/z2;//cosine of phase angle
phi2=(180/%pi)*acos(cos2);//phase angle in degree
ii2=i2*cos2;//in phase component of branch2 in amperes
iq2=-i2*sin(acos(cos2));//quadrature component of branch 2 in amperes
z3=((r3^2)+((1/(2*%pi*f*c3))^2))^0.5;//impedance of branch 3 in ohms
i3=v/z3;//current in branch 3 in amperes
cos3=r3/z3;//cosine of the phase angle 
phi3=(180/%pi)*acos(cos3);//phase angle in degrees
ii3=i3*cos3;//in phase component of branch 3 in amperes
iq3=i3*sin(acos(cos2));//quadrature component of branch 3 in amperes
ii=ii1+ii2+ii3;//total in phase component in amperes
iq=iq1+iq2+iq3;//total quadrature component in amperes
it=((ii^2)+(iq^2))^0.5;//total current in amperes
cost=ii/it;//cosine of total phase angle
phit=(180/%pi)*acos(cost);//phase angle in degrees
zs=v/it;//equivalent series impedance in ohms
rs=zs*cost;//equivalent series resistance in ohms
xs=zs*sin(acos(cost));//equivalent series reactance in ohms
l=(xs*1000)/(2*%pi*f);//inductance in millihenry

//output
mprintf('the total current is %3.2f A lagging by %3.0f degrees and the equivalent series circuit would be a resistive inductive circuit of %3.1f ohms and %3.0f mH',it,phit,rs,l )
