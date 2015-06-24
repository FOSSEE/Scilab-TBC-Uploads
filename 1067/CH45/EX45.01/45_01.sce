clear;
clc;
v=460;
i=200;
r=1.73*v*i/1e3;
r=round(r*10)/10;
p=120;
c=p/r;//the difference in result is due to erroneous calculation in textbook.
s=sqrt(1-(c^2))
rr=r*s;
mprintf("the power factor=%f\nthe rating=%fkVA\n the kVAr of system=%fkVA",c,r,rr);
disp("the difference in result is due to erroneous calculation in textbook.");
