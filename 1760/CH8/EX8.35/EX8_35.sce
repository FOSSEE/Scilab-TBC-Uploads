                 //EXAMPLE 8-35    PG NO-552
R1=200;
R2=200;
R3=100;
Zoc=[R1*(R2+R3)/(R1+R2+R3)];
disp('i) IMPEDANCE (Zoc) is    =  '+string (Zoc) +'  ohm ');
Zsc=(R1*R3)/(R1+R3);
disp('ii) IMPEDANCE (Zsc) is    =  '+string (Zsc) +'  ohm ');
Zo=[Zoc*Zsc]^0.5;
disp('iii) IMPEDANCE (Zo) is    =  '+string (Zo) +'  ohm ');
N=2.618;
D=20*log10(N)
disp('ii) (D) is    =  '+string (D) +'  dB ');
