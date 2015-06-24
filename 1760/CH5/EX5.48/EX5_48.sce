    //EXAMPLE 5-48        PG NO-336-337
V=24;
R1=4;
R2=4;
Iab=V/(R1+R2);
Idb=6;
Iba=(Idb/(R1+R2))*R1;
Ibc=Iab+Iba;
IDB=Ibc;
disp('i) CURRENT (Iab) is    =  '+string (Iab) +'  A ');
disp('i) CURRENT (Iba) is    =  '+string (Iba) +'  A ');
disp('i) CURRENT (Ibc) is    =  '+string (Ibc) +'  A ');
disp('i) CURRENT (IDB) is    =  '+string (IDB) +'  A ');
