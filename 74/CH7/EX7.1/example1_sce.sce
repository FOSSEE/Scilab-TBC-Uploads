//chapter 7
//example 7.1
//page 259
R1=86*10^3;R2=100*10^3;
Vsat=15;Rf=100*10^3;
C=.1*10^-6;
Vut=(R1*Vsat)/(R1+R2);
disp(Vut)// upper threshold
Vlt=(R1*(-Vsat))/(R1+R2);
disp(Vlt)//lower threshold
fo=1/(2*Rf*C)*log((Vsat-Vlt)/(Vsat-Vut));
disp(fo)