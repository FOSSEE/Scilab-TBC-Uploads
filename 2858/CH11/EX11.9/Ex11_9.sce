//example 11.9
clc; funcprot(0);
Wrh=30*12;
E=0.8;
Wr=7.5;
S=1/8;
C=0.1;
FS=6;
n=0.4;
Wp=12/12*12/12*80*150+550;
Wp=Wp/1000;
Qu=E*Wrh/(S+C)*(Wr+n^2*Wp)/(Wr+Wp);
Qall=Qu/FS;
disp(Qall,"allowed bearing capacity in kip")
//part2
He=30*12;
L=80*12;
Ap=12*12;
Ep=3e6/1000;
FS=4;
Qu=E*He/(S+sqrt(E*He*L/2/Ap/Ep));
Qall2=Qu/FS;
disp(Qall2,"allowed bearing capacity in kip")

//partc
a=27;
b=1;
He=30;
FS=3;
Qu=a*sqrt(E*He)*(b-log10(S));
Qall3=Qu/FS;
disp(Qall3,"allowed bearing capacity in kip")



