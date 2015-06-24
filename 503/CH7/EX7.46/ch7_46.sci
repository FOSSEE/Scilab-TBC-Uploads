//to calculate load torque, motor speed and line current

clc;
V=250;
Rf=41.67;
If1=V/Rf;
Ia=126;
Ia1=Ia-If1;
Ra=.03;
Ea1=V-Ra*Ia1;
n1=1105;    //rpm
w1=2*%pi*n1/60;
Ka=Ea1/(If1*w1);
T=Ka*If1*Ia1;
disp(T,'torque(Nm)');

If2=5;
Ia2=Ia1*(If1/If2);
I_L2=Ia2+2;disp(I_L2,'motor current(A) initial');
Ea2=V-Ra*Ia2;
w2=Ea2/(Ka*If2);

If1=6;
Voc1=267;
n=1200;
k1=Voc1/(2*%pi*n/60);    //k=Ka*phi
If1=5;
Voc2=250;
n=1200;
k2=Voc2/(2*%pi*n/60);    //k=Ka*phi
Ia2=Ia1*(k1/k2);
I_L2=Ia2+2;disp(I_L2,'motor current(A) final');
Ea2=V-Ra*Ia2;
w2=Ea2/k2;
disp(w2,'motor speed(rad/s)');
