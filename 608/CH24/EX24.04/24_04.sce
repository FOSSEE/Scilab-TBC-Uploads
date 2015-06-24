//Problem 24.04: The impedance of an electrical circuit is (30 - i50) ohms.Determine (a) the resistance, (b) the capacitance, (c) the modulus of the impedance, and (d) the current flowing and its phase angle, when the circuit is connected to a 240 V, 50 Hz supply.

//initializing the variables:
V = 240; // in Volts
f = 50; // in Hz
Z = 30 - %i*50;

//calculation:
//Since impedance Z = 30 - i50,
//resistance
R = real(Z)
//capacitive reactance
Xc = abs(imag(Z))
//capacitance
C = 1/(2*%pi*f*Xc)
//modulus of impedance
modZ = (R^2 + Xc^2)^0.5
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
printf("\n (a)resistance is %.0f ohm", R)
printf("\n (b)capacitance is %.2E Farad", C)
printf("\n (c)modulus of impedance is %.2f ohm", modZ)
printf("\n (d)current flowing and its phase angle is (%.2f/_%.2f°) A", r, theta)