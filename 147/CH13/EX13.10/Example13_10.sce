//Turn ratio a, Resistance of primary winding R1,Resistance of secondary winding R2
//Primary leakage reactance X1, Secondary leakage reactance X2
//Magnetizing reactance Xm, Resistance accounting for core loss Rc
close();
clear;
clc;
a = 5;
R1 = 0.5;//ohm
R2 = 0.021;
X1 = 3.2; 
X2 = 0.12;
Rc = 350;
Xm = 98;
//For circuit reffered to primary
Rp = R1 + a^2*R2;
Xp = X1 + a^2*X2;
Rcp = Rc;
Xmp = Xm;
//For cicuit reffered to secondary
Rs = R1/a^2 + R2;
Xs = X1/a^2+X2;
Rcs = Rc/a^2;
Xms = Xm/a^2;
mprintf('For circuit reffered to primary:\nR'' = %0.3f ohm\nX'' = %0.1f ohm\nR''c = %0.0f ohm\nX''m = %0.0f ohm\nFor circuit reffered to secondary:\nR'' = %0.3f ohm\nX'' = %0.3f ohm\nR''''c = %0.0f ohm\nX''''m = %0.2f ohm',Rp,Xp,Rcp,Xmp,Rs,Xs,Rcs,Xms);
