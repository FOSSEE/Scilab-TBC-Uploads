clc;
m=58;      //mass in kg
v=0.1*0.2*4;   //calculating volume using v=l*b*h in m cube
d=m/v;  //calculating density using d=m/v in kg/m cube
dw=1000;  //density of water in kg/m cube
spgr=d/dw;  //calculating specific gravity of oak
disp(spgr,"Specific Gravity of Oak = ");  //displaying result.
disp("Since specific gravity of oak is less than that of water (ie. 1), it floats in water");   //displaying result.