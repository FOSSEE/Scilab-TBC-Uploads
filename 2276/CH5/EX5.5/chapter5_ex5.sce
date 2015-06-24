clc
clear

//input
r=30;//resistance of a resistance in ohms which is connected in parallel with a bank of capacitors
c=80*(10^-6);//capacitance of bank of capacitors in farad
v=240;//supply voltage in volts
f=50;//supply frequency in hertz

//calculations
i1=v/r;//current in phase with the voltage in amperes
i2=v*2*%pi*f*c;;//current leading on voltage by 90 degrees in amperes
i=((i1^2)+(i2^2))^0.5;//total current in amperes
phi=(180/%pi)*acos(i1/i);//phase angle in degrees

//output
mprintf('the total current is %3.0f A leading on the voltage by %3.0f degrees',i,phi)
