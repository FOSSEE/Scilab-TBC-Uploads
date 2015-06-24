              //EXAMPLE 8-47    PG  NO-561
R1=175;
R2=350;
Zoc=R1+R2;
Zsc=R1+[(R1*R2)/(R1+R2)];
Zo=[Zoc*Zsc]^0.5;
N=[R1+R2+Zo]/R2;
AT=20*log10(2.618);
disp('i)    impedance (Zoc) is    =  '+string (Zoc) +'  ohm ');
disp('ii) impedance (Zsc) is    =  '+string (Zsc) +'  ohm ');
disp('iii)impedance (Zo) is    =  '+string (Zo) +'  ohm ');
disp('iv)   (N) is    =  '+string (N) +'   ')
disp('v)attenuation (AT) is    =  '+string (AT) +'  dB ')
