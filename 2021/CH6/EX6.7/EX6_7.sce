//Finding of Rate Of Flow
//Given
d1=15;
d2=30;
hm=50;
spgr=0.9;
spgr1=13.6;
cod=0.64;
g=9.81;
//To Find
A0=(%pi/4)*d1^2;
A1=(%pi/4)*d2^2;
h=((spgr1/spgr)-1)*hm;
x=(A0*A1)/sqrt(A1^2-A0^2);
y=sqrt(2*g*h);
q=cod*x*y;
disp(" Discharge ="+string(q)+" cm^3/sec");
q1=q/100;
disp(" Discharge ="+string(q1)+" ltr/sec");
