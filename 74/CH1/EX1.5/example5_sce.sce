//chapter 1
// example 1.5
//page 27.figure 1.31
Ic1=10*10^-6;Vcc=50;Vbe=.7;R=50*10^3;
Ic2=(Vcc-Vbe)/R;
disp(Ic2);
Vt=26*10^-3// assume at room temperature of 300k
Re=Vt/Ic1*log(Ic2/Ic1);
disp(Re)//result in ohm