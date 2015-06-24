clc;clear;
//Example 7.7

//given data
P1=1;
T1=110;
P2=5;
T2=120;

//from Table 
//At P1 and T1
s1=4.875;
cp1=3.471;
//at P2 and T2
s2=5.145;
cp2=3.486;

//calculations
//part - a
dSa=s2-s1;
disp(dSa,'change in entropy in kJ/kg K using tabulated properties');
//part - b
cavg=(cp1+cp2)/2;
dSb=cavg*log(T2/T1);
disp(dSb,'change in entropy in kJ/kg K approximating liquid methane as an incompressible substance');
E=(dSb-dSa)/dSa*100;
disp(E,'Error % is')
