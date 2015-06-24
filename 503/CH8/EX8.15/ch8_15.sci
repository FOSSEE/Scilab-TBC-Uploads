//find the excitation emf,mech power developed,pf

clc;
j=sqrt(-1);
V=6600;
Vt=V/sqrt(3);
r=4*10^6;
Ia=r/(sqrt(3)*V);
Xs=4.8;
//Vt^2+Ef^2-2*Vt*Efcosd(dl)=(Ia*Xs)^2
//after solving
//Ef^2-7.16*Ef+11.69=0;
function [x1,x2]=quad(a,b,c)
    d=sqrt(b^2-4*a*c);
    x1=(-b+d)/(2*a);
    x2=(-b-d)/(2*a);
endfunction
[Ef1 Ef2]=quad(1,-7.16,11.69);
dl=20;
disp(Ef1,'excitation(kV)');
Pm=3*3.81*Ef1*sind(dl)/Xs;disp(Pm,'power developed(MW)');
pf1=Pm*10^6/(sqrt(3)*V*Ia);disp(pf1,'pf1');

disp(Ef2,'excitation(kV)');
Pm=3*3.81*Ef2*sind(dl)/Xs;disp(Pm,'power developed(MW)');
pf2=Pm*10^6/(sqrt(3)*V*Ia);disp(pf2,'pf2');

