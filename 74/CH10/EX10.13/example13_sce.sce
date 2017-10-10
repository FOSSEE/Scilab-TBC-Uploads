//chapter 10
//example 10.13
//page 373
Vref=7;Vsense=.65;
Voutmin=9;Voutmax=12; I1=.5;Imax=150*10^-3;
R2=10*10^3;//let assume
//(R1+R2)/R2=Vout/Vref-----------eq(1)
R1min=2*R2/7;
disp(R1min)
Voutmax=12
R1max=5*R2/7;//using eq (1)
disp(R1max)
Rsc=Vsense/I1;
disp(Rsc)
R3=(R1max*R2)/(R1max+R2)
Bmin=I1/Imax;
disp(Bmin)