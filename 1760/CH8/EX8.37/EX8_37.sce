                 //EXAMPLE 8-37      PG NO-553
R1=657.08;
R2=44.316;
Zoc=R1+R2;
Zsc=R1+[(R1*R2)/(R1+R2)];
Zo=[Zoc*Zsc]^0.5;
N=[R2+R1+Zo]/R2;
disp('i)    impedance (Zoc) is    =  '+string (Zoc) +'  ohm ');
disp('ii) impedance (Zsc) is    =  '+string (Zsc) +'  ohm ');
disp('iii)impedance (Zo) is    =  '+string (Zo) +'  ohm ');
disp('iv) (N) is    =  '+string (N) +'   ');
