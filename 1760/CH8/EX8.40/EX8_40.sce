                   //EXAMPLE 8-40  PG NO-554-555
R1=459.089;
R2=22500';
Zoc=[R1*(R1+R2)]/{R1+R2+R1};
Zsc=[(R1*R2)/(R1+R2)];
Zo=[Zoc*Zsc]^0.5;
disp('i)    impedance (Zoc) is    =  '+string (Zoc) +'  ohm ');
disp('ii) impedance (Zsc) is    =  '+string (Zsc) +'  ohm ');
disp('iii)impedance (Zo) is    =  '+string (Zo) +'  ohm ');

