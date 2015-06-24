
clc;
//e.g 12.4
rb1=4*10**3;
rb2=2.5*10**3;
Vbb=15;
Vd=0.7;
n=rb1/(rb1+rb2);
disp(n,"n=");//intrinsic standoff ratio
Vp=n*Vbb+Vd;
disp('V',Vp*1,"Vp=");//peak point voltage
