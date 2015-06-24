//calculate firing angle value

clc;
Po=15000;
Ro=1.5;
Va=sqrt(Po*Ro);
a=acosd((Va*2*%pi/(3*sqrt(6)*V))-1);disp(a,'firing angle(deg)');
Ia=Va/Ro;
Ith=Ia/3;disp(Ith,'avg current through diodes(A)');