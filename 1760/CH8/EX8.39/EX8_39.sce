                   //EXAMPLE 8-39       PG NO-554
R1=250;
R2=750;
Zoc=[R1*(R1+R2)]/{R1+R2+R1};
Zsc=[(R1*R2)/(R1+R2)];
Zo=[Zoc*Zsc]^0.5;
disp('i)    impedance (Zoc) is    =  '+string (Zoc) +'  ohm ');
disp('ii) impedance (Zsc) is    =  '+string (Zsc) +'  ohm ');
disp('iii)impedance (Zo) is    =  '+string (Zo) +'  ohm ');

