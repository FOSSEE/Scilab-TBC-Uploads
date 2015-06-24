// Exa 2.17
clc;
clear;
close;
// Given data
R1= 200;//in ohm
R2= 100;//in ohm
R3= 50;//in ohm
del_R1ByR1= 5;
del_R2ByR2= 5;
del_R3ByR3= 5;
// Part (i) when the resistance are connected in series
Rse= R1+R2+R3;// in ohm
disp(Rse,"Equivalent resistance when connected in seried in ohm");
LimError= R1/Rse*del_R1ByR1 + R2/Rse*del_R2ByR2 + R3/Rse*del_R3ByR3;
disp(LimError,"Relative limiting error of series resistances in percentage (with pos and neg)") ;
LimError= Rse*LimError/100;//relative limiting error of series equivalent resistance in ohm
disp(LimError,"Relative limiting error of series equivalent resistance in ohm")

// Part(ii) when the resistance are connected in parallel
Rp= R1*R2*R3/(R1*R2+R2*R3+R3*R1);
disp(Rp,"Equivalent resistance when connected in parallel in ohm")
// Let Rp= X/Y
X= R1*R2*R3;
Y=R1*R2+R2*R3+R3*R1;
y1= R1*R2;
y2= R2*R3;
y3= R3*R1;
ErrorX= del_R1ByR1 + del_R2ByR2 + del_R3ByR3;
Errory1= del_R1ByR1 + del_R2ByR2 ;
Errory2= del_R2ByR2 + del_R3ByR3 ;
Errory3= del_R3ByR3 + del_R1ByR1 ;
ErrorY= [ y1/Y*Errory1 + y2/Y*Errory2 + y3/Y*Errory3];
LimError= ErrorX+ErrorY;
disp(LimError,"Percentage error (maximum possible) in equivalent parallel resistance in percentage")
LimError= Rp*LimError/100;
disp(LimError,"Error (maximum possible) in equivalent parallel resistance in ohm")
