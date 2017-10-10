clc
//Example 15.12
// Overheating of brake

//------------------------------------------------------------------------------
//Given Data:

C=39
delta_T=165
Hd=70e3
d=0.45
b=0.1

res12= mopen(TMPDIR+'12_overheating_of_brake.txt','wt')

Ar= Hd/(C*delta_T)
mfprintf(res12,'Area (required) = %0.2f m^2\n',Ar)

A=0.5*%pi*d*b
mfprintf(res12,'Area (available) = %0.2f m^2\n',A)

mfprintf(res12,'Area (required) < Area (available)\n\tThe drum will overheat')

mclose(res12);
editor(TMPDIR+'12_overheating_of_brake.txt')

//------------------------------------------------------------------------------
//--------------------------------End of program--------------------------------