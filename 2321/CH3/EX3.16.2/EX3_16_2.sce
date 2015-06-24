//Example No. 3.16.2
clc;
clear;
close;
format('v',6);
ecd=1;//for lossless antenna
Aem=2.147;//m²(Maximum Effective aperture)
Zin=75;//Ω(Input impedence)
Zo=50;//Ω(Output impedence)
f=100;//MHz(Operating frequency)
c=3*10^8;//m/s(speed f light)
aw_aa=1;//For no polarization loss
lambda=c/(f*10^6);//m(Wavelength)
Tau=(Zin-Zo)/(Zin+Zo);//(Reflection Coefficient)
Do=Aem/(ecd*(1-Tau^2)*lambda^2/(4*%pi)/aw_aa^2);//unitless(Directivity)
disp(Do,"Directivity of antenna : ");
