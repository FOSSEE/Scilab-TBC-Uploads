

//example 11.6
//design length and depth of stilling basin
clc;funcprot(0);
//given
q=1;           //discharge of spillway
Cd=0.7;        //coefficient of discharge
h1=10;          //heigth of crest above downstream silting basin
g=9.81;           //acceleration due to gravity
Cv=0.9;          //coefficient of velocity

h=(3*q/(2*Cd*(2*g)^0.5))^(2/3);
H=h1+h/2;
vt=(2*g*H)^0.5;
v1=Cv*vt;
y1=q/v1;
F1=v1/(g*y1)^0.5;
//F>1, flow is super-critical
y2=1;
v2=q/y2;
F2=v2/(g*y2)^0.5;           //<1
y2=(y1/2)*((1+8*F1^2)^0.5-1);
de=y2-1;
le=5*(y2-y1);
de=round(de*1000)/1000;
le=round(le*10)/10;
mprintf("stilling basin should be depressed by %f m.",de);
mprintf("\nlength of stilling basin=%f m.",le);


