//Problem 42.10: The current input to a filter section is 24/_10° mA and the current output is 8/_-45° mA. Determine for the section (a) the attenuation coefficient, (b) the phase shift coefficient, and (c) the propagation coefficient. (d) If five such sections are cascaded determine the output current of the fifth stage and the overall propagation constant of the network.

//initializing the variables:
ri1 = 0.024; // in amperes
ri2 = 0.008; // in amperes
thetai1 = 10; // in ddegrees
thetai2 = -45; // in ddegrees

//calculation:
//currents
I1 = ri1*cos(thetai1*%pi/180) + %i*ri1*sin(thetai1*%pi/180)
I2 = ri2*cos(thetai2*%pi/180) + %i*ri2*sin(thetai2*%pi/180)
//ir
ir = I1/I2
irmag = ri1/ri2
thetai = thetai1-thetai2
//attenuation coefficient
a = log(irmag)
//phase shift coefficient
b = thetai*%pi/180
//propagation coefficient 
r = a + %i*b
//output current of the fifth stage
I6 = I1/(ir^5)
x = ir^5
xmg = (real(x)^2 + imag(x)^2)^0.5
//overall attenuation coefficient
ad = log(xmg)
//overall phase shift coefficient
bd = atan(imag(x)/real(x)) + 2*%pi

printf("\n\n Result \n\n")
printf("\nattenuation coefficient is %.3f N ",a)
printf("\nphase shift coefficient is %.3f rad ",b)
printf("\npropagation coefficient is %.3f + (%.3f)i ",a,b)
printf("\nthe output current of the fifth stage is %.2E + (%.2E)i A and the overall propagation coefficient is %.2f + (%.2f)i",real(I6),imag(I6),ad,bd)