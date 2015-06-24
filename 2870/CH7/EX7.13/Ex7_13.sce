clc;clear;
//Example 7.13

//given data
P1=100;
T1=300;
P2=900;

//constants used
R=0.287;//in kJ/kg -K

//calculations
//part - a
k=1.4;
Wcomp=k*R*T1/(k-1)*((P2/P1)^((k-1)/k)-1);
disp(Wcomp,'compression work in case of isentropic compression in kJ/kg');
//part - b
n=1.3;
Wcomp=n*R*T1/(n-1)*((P2/P1)^((n-1)/n)-1);
disp(Wcomp,'compression work in case of polytropic compression in kJ/kg');
//part - c
Wcomp=R*T1*log(P2/P1);
disp(Wcomp,'compression work in case of isothermal compression in kJ/kg');
//part - d
Ps=sqrt(P1*P2);
Wcomp=2*n*R*T1/(n-1)*((Ps/P1)^((n-1)/n)-1);
disp(Wcomp,'compression work in case of two-stage compression with intercooling in kJ/kg');
