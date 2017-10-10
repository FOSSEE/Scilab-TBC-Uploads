//ex 2.2  to find complex propogation const at (a)1MHz (b)1GHz
r=0.1; //in ohm
l=0.2e-6; //in henry
c=10e-12; //in farad
g=0.02; //in mho
f1=1e6;
w1=2*%pi*f1;
k1=sqrt((r+%i*w1*l)*(g+%i*w1*c));
disp('propogation const at F=1MHz is='+string(k1)+'/m');
f2=1e9;
w2=2*%pi*f2;
k2=sqrt((r+%i*w2*l)*(g+%i*w2*c));
disp('propogation const at F=1GHz is='+string(k2)+'/m');
