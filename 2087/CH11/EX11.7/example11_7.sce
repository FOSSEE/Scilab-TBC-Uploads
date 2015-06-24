

//example 11.7
//calculate leading dimension of hydraulic jump stilling basin
clc;funcprot(0);
//given
q=7.83;        //discharge through spillway
w=12.5;        //width of fall
d=2;           //depth of water in downstream
g=9.8;

y1=0.5;
v1=q/y1;
F1=v1/(g*y1)^0.5;

//F>1,flow is super-critical
v2=q/d;
F2=v2/(g*d)^0.5;
y2=(y1/2)*((1+8*F1^2)^0.5-1);
de=y2-d;
le=5*(y2-y1);
de=round(de*100)/100;
le=round(le*10)/10;
mprintf("stilling basin should be depressed by %f m.",de);
mprintf("\nlength of stilling basin=%f m.",le); 
