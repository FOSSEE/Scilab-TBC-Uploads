// chapter 4
// example 4.3
// page 194
Vp_p=5;//peak to peak volatage of sine wave
Vlt=-1.5;//lower threshold level
Vh=2;// hysteresis width
f=1000;
Vut=Vh-(-Vlt);
disp(Vut)
Vm=Vp_p/2;
disp(Vm)
//Vlt=Vm*sin(%pi+x)
x=36.87;// taking sin invers
T=1/f;
disp(T)
T1=(T*(180+x))/360;//T1 exist for angle 0 to (180+36.87)
disp(T1)
T2=T-T1;//t2 exist for angle 216.87 to 360
disp(T2)