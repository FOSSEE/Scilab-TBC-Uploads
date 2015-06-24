//to find max andmin pu field excitation

clc;
Xd=.71;
Xq=.58;
Xe=.08;
Xdt=Xd+Xe;
Xqt=Xq+Xe;

Pe=0;Vt=1;
dl=0;
phi=90;
Ia=1;
Iq=0;
Id=Ia;

Ef=Vt+Id*Xdt;
Ifmax=Ef;disp(Ifmax,'max field excitation(A)');


Ef=Vt-Id*Xdt;
Ifmin=Ef;disp(Ifmin,'min field excitation(A)');