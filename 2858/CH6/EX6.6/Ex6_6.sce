//example 6.6
clc; funcprot(0);
//solving for d
deff('y=f(d)','y=(96+2*d)*d-2615.1');
[x]=fsolve(19,f);
d1=x;
deff('y=f(d)','y=(96+4*d)*d-6046.4');
[x]=fsolve(28,f);
d2=x;
d=max(d2,d1);
d=round(d)
//now coming to design part
h=d+3+1;
disp(h,"total slab thickness in inches");
qa=1.082;
qb=1.106;
qm=1.212;
qn=1.188;
q1A=qa/2+qb/2;
disp(q1A,"force in strip ABMN in kip/ft^2");
q2A=qm/2+qn/2;
disp(q2A,"force in strip ABMN in kip/ft^2");
q1=1.106/3+1.127/3+1.147/3;
disp(q1,"force in strip BCDKLM in kip/ft^2");
q2=1.253/3+1.233/3+1.212/3;
disp(q2,"force in strip BCDKLM in kip/ft^2");
q1=1.147/3+1.167/3+1.188/3;
disp(q1,"force in strip DEFIJK in kip/ft^2");
q2=1.294/3+1.273/3+1.253/3;
disp(q2,"force in strip DEFIJK in kip/ft^2");
q1=1.188/2+1.212/2;
disp(q1,"force in strip FGHI in kip/ft^2");
q2=1.318/2+1.294/2;
disp(q2,"force in strip FGHI in kip/ft^2");
//checking for force
//net soil reaction <load 
netforce=1/2*(1.094+1.2)*14*96+1/2*(1.127+1.233)*24*96+1/2*(1.167+1.273)*24*96+1/2*(1.2+1.306)*14*96;
if netforce<8761 then
    disp("forces generated is OK")
end
//checking for reinforcement requirement
Q1=1.4*180+1.7*120;
Q2=1.4*360+1.7*200;
Q3=1.4*400+1.7*240;
Q4=1.4*180+1.7*120;
//solving for a
deff('y=f(a)','y=0.9*0.51*a*60*(29-a/2)-95.05*12');
[x]=fsolve(1.4,f);
a=x;
As=0.51*a
fy=60000;
disp(As,"required area in in^2");
Asmin=200/fy*12*29;
disp(Asmin,"minimum reinforcement required in^2/ft");
printf("use No 9 bars at 10 inch centre to centre")

