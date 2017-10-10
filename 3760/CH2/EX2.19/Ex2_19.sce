clc;
// L1=3+(1/(2*X)) -self inductance of coil 1
// L1=2+(1/(2*X)) -self inductance of coil 2
// M=1/(2*X) -mutual inductance 
// X is displacement 
i1=10; // current of coil 1
i2=-5; // current of coil 2
// from expression W=(L1*i1^2)/2 + (L2*i2^2)/2 + (i1*i2*M) where W is work done and is equal to 175+25/(4*x);
// fe=-25/(4*x^2) where fe is electromagnetic force and is equal to rate of change of work done with respect to x
disp('case a');
x1=0.5;
x2=1; 
Wm=integrate('-25/(4*x^2)','x',x1,x2);
printf('Mechanical work done for given increment in displacement is %f watt-sec\n',Wm);
disp('case b')
// psi1=(3+(1/(2*x)))*i1+(1/(2*x))*i2 psi1 is flux linkage with coil 1  
// psi2=(2+(1/(2*x)))*i2+(1/(2*x))*i1 psi2 is flux linkage with coil 2 
We1=(((3+(1/(2*x2)))*i1+(1/(2*x2))*i2)-((3+(1/(2*x1)))*i1+(1/(2*x1))*i2))*i1;
We2=(((2+(1/(2*x2)))*i2+(1/(2*x2))*i1)-((2+(1/(2*x1)))*i2+(1/(2*x1))*i1))*i2;
printf('Electrical energy supplied by source 1 is %f watt-sec\n',We1);
printf('Electrical energy supplied by source 2 is %f watt-sec\n',We2);
disp('case c');
// W=175+(25/(4*x));
dw=175+(25/(4*x2))-(175+(25/(4*x1)));
printf('Change in field energy is %f Watt-sec\n',dw);


