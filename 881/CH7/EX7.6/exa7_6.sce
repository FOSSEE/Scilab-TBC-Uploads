clc;
//Example 7.6
//Page No 261



//solution

K=0.75;
fcp=500;
K1=1.5;
fcf=500;
vm=2;
fm=2;
Vm=4;
Fm=1;

//(a)

disp("(a) FM Modulator ");

m=(vm*K1)/fm;

disp(m,"m = ");

disp("PM Modulator ");

m1=vm*K;

disp(m1,"m = ");

disp("Since the modulation indexes are same the output spectrum is also the same, which is in figure 7-8(a) ");

//(b)

disp("(b) FM Modulator ");

M=(Vm*K1)/fm;

disp(M,"m = ");

disp("PM Modulator ");

M1=Vm*K;

disp(M1,"m = ");

disp("Again, since the modulation indexes are same the output spectrum is also the same, which is in figure 7-8(b) ");

//(c)

disp("(a) FM Modulator ");

m2=(vm*K1)/Fm;

disp(m2,"m = ");

disp("PM Modulator ");

m3=vm*K;

disp(m3,"m = ");

disp("Since the modulation indexes are not same the output spectrum are given in figures 7-8(c) and 7-8(d), respectively");






