// Find the symmetrical component of currents
clear
clc;
Ia=500+ %i*150;// Line current in phase a
Ib=100- %i*600;// Line current in phase b
Ic=-300+ %i*600;// Line current in phase c
L=(cosd(120)+ %i*sind(120));
Iao=(Ia+Ib+Ic)/3;
Ia1=(Ia+Ib*L+(L^2)*Ic)/3;
Ia2=(Ia + (L^2)*Ib +(L*Ic))/3;
disp(Iao,"Iao(amps)=");
disp(Ia1,"Ia1(amps)=");
disp(Ia2,"Ia2(amps)=");// Answer in the book is not correct.wrong calculation in the book

