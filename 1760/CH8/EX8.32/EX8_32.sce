                      //EXAMPLE 8-32      PG NO-550
Zoc=200;
Zsc=187.5;
Zo=[Zoc*Zsc]^0.5;
R1=50;
R2=150;
R3=193.65;
N=[R1+R2+R3]/R1;
D=20*log10(N)
disp('ii) IMPEDANCE (Zo) is    =  '+string (Zo) +'  ohm ');
disp('ii)  (N) is    =  '+string (N) +'   ');
disp('ii)  (D) is    =  '+string (D) +'  dB ');

