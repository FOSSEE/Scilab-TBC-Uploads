//Example_a_9_8 page no:408
clc;
Iph=10;
Vl=440;
pi=30;
Il=sqrt(3)*Iph;
Pac=sqrt(3)*Vl*Il*cosd(pi);
Pac=Pac/1000;//converting to killo Watt
Prc=sqrt(3)*Vl*Il*sind(pi);
Prc=Prc/1000;//converting to killo VAR
disp(Il,"the line current is (in A)");
disp(Pac,"the total active power is (in KW)");
disp(Prc,"the total reactive power is (in KVAR)");
