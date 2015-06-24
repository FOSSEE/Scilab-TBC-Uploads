//Problem 24.05: A 200 V, 50 Hz supply is connected across a coil of negligible resistance and inductance 0.15 H connected in series with a 32 ohm resistor. Determine (a) the impedance of the circuit, (b) the current and circuit phase angle, (c) the p.d. across the 32 ohm resistor, and (d) the p.d. across the coil.

//initializing the variables:
V = 200; // in Volts
f = 50; // in Hz
R = 32; // in ohms
L = 0.15; // in Henry

//calculation:
//Inductive reactance XL
XL = 2*%pi*f*L
//impedance, Z
Z = R + %i*XL
//Current I
I = V/Z
xi = real(I)
yi = imag(I)
ri = (xi^2 + yi^2)^0.5
if ((xi==0)&(yi<0)) then
    thetai = -90
elseif ((xi==0)&(yi>0)) then
    thetai = +90
else
    thetai = atan(yi/xi)*180/%pi
end
//P.d. across the resistor
VR = I*R
xr = real(VR)
yr = imag(VR)
rr = (xr^2 + yr^2)^0.5
thetar = atan(yr/xr)*180/%pi
//P.d. across the coil, VL
VL = I*%i*XL
xl = real(VL)
yl = imag(VL)
rl = (xl^2 + yl^2)^0.5
thetal = atan(yl/xl)*180/%pi

printf("\n\n Result \n\n")
printf("\n (a)impedance is %.0f + (%.1f)i ohm", real(Z), imag(Z))
printf("\n (b)current flowing and its phase angle is (%.2f/_%.2f°) A", ri, thetai)
printf("\n (c)P.d. across the resistor is (%.2f/_%.2f°) V", rr,thetar)
printf("\n (d)P.d. across the coil, VL is (%.2f/_%.2f°) V", rl, thetal)