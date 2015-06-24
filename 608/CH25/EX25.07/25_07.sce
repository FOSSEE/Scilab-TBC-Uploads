//Problem 25.07: (a) For the network diagram of Figure 25.8, determine the value of impedance Z1 (b) If the supply frequency is 5 kHz, determine the value of the components comprising impedance Z1.

//initializing the variables:
RL = %i*6; // in ohm
R2 = 8; // in ohm
Z3 = 10; // in ohm
rv = 50; // in volts
thetav = 30; // in degrees
ri = 31.4; // in amperes
thetai = 52.48; // in degrees
f = 5000; // in Hz

//calculation:
//impedance, Z2
Z2 = R2 + RL
//voltage
V = rv*cos(thetav*%pi/180) + %i*rv*sin(thetav*%pi/180)
//current, I
I = ri*cos(thetai*%pi/180) + %i*ri*sin(thetai*%pi/180)
//Total circuit admittance,
YT = I/V
//admittance, Y3
Y3 = 1/Z3
//admittance, Y2
Y2 = 1/Z2
//admittance, Y1
Y1 = YT - Y2 - Y3
//impedance, Z1
Z1 = 1/Y1

printf("\n\n Result \n\n")
printf("\n (a)the impedance Z1 is %.2f + (%.2f)i ohm",real(Z1), imag(Z1))

//resistance, R1
R1 = real(Z1)
X1 = imag(Z1) 
if ((R1>0)&(X1<0)) then
    C1 = -1/(2*%pi*f*X1)
    printf("\n (b)The series circuit thus consists of a resistor of resistance %.2f ohm and a capacitor of capacitance %.2E Farad\n",R1,C1)
elseif ((R1>0)&(X1>0)) then
    L1 = 2*%pi*f*X1
    printf("\n (b)The series circuit thus consists of a resistor of resistance %.2f ohm and a inductor of insuctance %.2E Henry\n",R1,L1)
end