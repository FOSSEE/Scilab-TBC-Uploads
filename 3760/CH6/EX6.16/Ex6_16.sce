 
clc;
r2=0.04;
x2=0.2;

//As per given conditions we get a quadratic equation in smT which is smT^2-4*smT+1
t1=1; t2=-4; t3=1; 
p=[ t1 t2 t3];
smT=roots(p);

r22=x2*smT(2);
R=r22-r2;
mprintf('The external resistane needed to be inserted is %f Ohm \n',R);


//say V=400(Input voltage)
V=400;
//without external resistance
Ist=V/(sqrt((r2)*(r2)+(x2)*(x2)));
pf=r2/(sqrt((r2)*(r2)+(x2)*(x2)));

//with external resistance
Ist1=V/(sqrt((r22)*(r22)+(x2)*(x2)));
pf1=r22/(sqrt((r22)*(r22)+(x2)*(x2)));

a=((Ist-Ist1)/Ist)*100;
b=((pf1-pf)/pf)*100;
mprintf('Percentage in starting current is %f \n',a);
mprintf('Percentage in power factor is %f \n',b);



