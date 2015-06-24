//example 11.11
clc; funcprot(0);
Lg=9.92;
Bg=7;
n1=3;
Nc=8.75;
n2=4/1000;
Ap=14^2/12^2;
cup=1775;
a1=0.4;//alpha1
p=4*14/12;
cu1=1050;
L1=15;
a2=0.54;//alpha2
cu2=1775;
L2=45;
FS=4;
Qu=n1*n2*(9*Ap*cup+a1*p*cu1*L1+a2*p*cu2*L2);
Qu2=Lg*Bg*cup*Nc+2*(Lg+Bg)*(cu1*L1+cu2*L2);
disp(Qu2/1000,"load in kip")
Qall=Qu/FS;
disp(Qall,"allowed load in kip");


