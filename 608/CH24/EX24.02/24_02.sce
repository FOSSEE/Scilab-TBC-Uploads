//Problem 24.02: Determine, in polar and rectangular forms, the current flowing in an inductor of negligible resistance and inductance 159.2 mH when it is connected to a 250 V, 50 Hz supply.

//initializing the variables:
L = 0.1592 ; // in Henry
V = 250; // in Volts
f = 50; // in Hz
R = 0; // in ohms

//calculation:
//for an R–L series circuit, impedance
// Z = R + iXL
XL = 2*%pi*f*L
Z = R + %i*XL
I = V/Z
x = real(I)
y = imag(I)
r = (x^2 + y^2)^0.5
if ((x==0)&(y<0)) then
    theta = -90
elseif ((x==0)&(y>0)) then
    theta = +90
else
    theta = atan(y/x)*180/%pi
end

printf("\n\n Result \n\n")
printf("\n current is (%.0f/_%.0f°) A", r, theta)