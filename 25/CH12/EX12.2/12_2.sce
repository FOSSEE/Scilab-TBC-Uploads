// example:-12.2,page no.-674.
// program to find the reactive power in dbm.
Pt=120;f=6*10^9;
Gt=10^4.2;Gr=10^3.1;
lamda=0.05;R=3.59*10^7;
Pr=(Pt*Gt*Gr*(lamda^2))/((4*%pi*R)^2);
Pr=10*log10(Pr/0.001);
disp(Pr,'received power in dBm will be = ')