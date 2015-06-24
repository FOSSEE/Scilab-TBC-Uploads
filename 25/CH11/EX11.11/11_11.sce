//example:-11.11,page no.-642.
// program to obtain the greatest ratio of  off to on attenuation.
Cj=0.1*10^-12;Rr=1;Rf=5;Li=0.4*10^-9;f=5*10^9;Zo=50;
w=2*%pi*f;
Zr=Rr+%i*((w*Li)-(1/(w*Cj)));
Zf=Rf+(%i*w*Li);
// for series circuit.
ILon=-20*log10(abs((2*Zo)/(2*Zo+Zf)));
ILoff=-20*log10(abs((2*Zo)/(2*Zo+Zr)));
// for shunt circuit.
ILon1=-20*log10(abs((2*Zr)/(2*Zr+Zo)));
ILoff1=-20*log10(abs((2*Zf)/(2*Zf+Zo)));
disp(ILon,'for series circuit = ')
disp(ILoff,'for series circuit = ')
disp(ILon1,'for shunt circuit = ')
disp(ILoff1,'for shunt circuit = ')