//Ex:4.42
clc;
clear;
close;
D=10;// beam width
y=30.54;// wavelength in cm
X=(58*y)/D;// 3-dB beam width
Ar=(%pi*X^2)/4;// area of the cross section in m^2
G=(4*%pi*Ar)/y^2;// the gain for y=30.54 cm
G1=10*log(G)/log(10);// the gain for y=30.54 cm in dB
y1=3.054;// wavelength in cm
X1=(58*y1)/D;// 3-dB beam width
Ar1=(%pi*X1^2)/4;// area of the cross section in m^2
G2=(4*%pi*Ar1)/y1^2;// the gain for y=3.054 cm
G3=10*log(G2)/log(10);// the gain for y=3.054 cm in dB
printf("The gain for y=30.54 cm = %f dB", G1);
printf("\n The gain for y=3.054 cm = %f dB", G3);