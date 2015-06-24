//Problem 25.05: For the parallel network shown in Figure 25.6, determine the value of supply current I and its phase relative to the 40 V supply.

//initializing the variables:
R1 = 5; // in ohm
R2 = 3; // in ohm 
R3 = 8; // ohm
Xc = 4; // in ohms
XL = 12; // in Ohms
V = 40; // in volts
f = 50; // in Hz

//calculation:
Z1 = R1 + %i*XL
Z2 = R2 - %i*Xc
Z3 = R3
//circuit admittance, YT = 1/ZT
YT = (1/Z1) + (1/Z2) + (1/Z3)
//Current I
I = V*YT
I1 = V/Z1
I2 = V/Z2
I3 = V/Z2
thetav = 0
thetai = atan(imag(I)/real(I))*180/%pi
phi = thetav - thetai 
if (phi>0) then
    a = "lagging"
else
    a = "leading"
end

printf("\n\n Result \n\n")
printf("\n current, I is (%.2f + (%.2f)i) A,and its phase relative to the 40 V supply is %s by %.2f°\n",real(I), imag(I),a,abs(phi))