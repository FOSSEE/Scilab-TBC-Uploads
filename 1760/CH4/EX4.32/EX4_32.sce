                              //EXAMPLE 4-32        PG NO-245-246
Vb=4.55;
Vc=2.57;
Vd=3.165;
Iab=2*(-Vb+9);
disp(' CURRENT is = '+string(Iab)+' A');
Ida=2*Vd;
disp(' CURRENT is = '+string(Ida)+' A');
Ibc=Vb-Vc;
disp(' CURRENT is = '+string(Ibc)+' A');
Idc=Vd-Vc;
disp(' CURRENT is = '+string(Idc)+' A');
Ibd=5*(Vb-Vd);
disp(' CURRENT is = '+string(Ibd)+' A');
Ica=Vc;
disp(' CURRENT is = '+string(Ica)+' A');
