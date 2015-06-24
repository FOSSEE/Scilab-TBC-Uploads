clc
clear

//input
r=20;//pure resistance connected in parallel with a pure inductance in ohms
l=0.08;//pure inductance in henry
v=240;//supply voltage in volts
f=50;//supply frequency in hertz

//calculations
i1=v/r;//current in resistive branch in amperes
i2=v/(2*%pi*f*l);//current inductive branch in amperes
it=((i1*i1)+(i2*i2))^0.5;//total current in amperes
phi=(180/%pi)*acos(i1/it);//phase angle in degrees

//output
mprintf('the total current is %3.1f A lagging by %3.1f degree',it,phi)
