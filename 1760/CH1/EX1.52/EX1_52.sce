                  //EXAMPLE  1-52    PG NO-46
L1=1;
L2=1;
L3=1;                //INDUCTANCE
DL1=[(L1*L2)+(L2*L3)+(L3*L1)]/(L1*L2*L3);
disp('i)DELTA INDUCTANCE = '+string (DL1)+' H')
L4=1.5;
L5=1.5;                   //Inductance
L6=1.5;
L=[L4*(L5+L6)]/[L4+L5+L6];
disp('ii)INDUCTANCE = '+string (L)+' H')
