//Caption:overall_transfer_function_and_root_locus
//example 7.24.10
//page 314
syms Ka Ke Kf Rf Lf eq  N1 N2 N3 N4 N5
//where Ka=amplifier_gain; Ke=error_detector_gain;  Kf=motor_torque_const; Rf=field_resistance; Lf=field_inductance Jeq=moment_of_inertia; feq=coeff_of_viscous_friction;
s=%s;
d=N1/N2;
e=N4/N3;
f=N4/N5;
n=N3/N5
Ke=0.05; Kf=2; Rf=10; Lf=2; Jeq=0.5*10^-4; feq=10^-4;  d=0.1; e=5; f=0.5;n=0.2;
a=(1*Ke); //in series
b=Kf/(Rf+s*Lf);
c=1/(s*(Jeq*s+feq));
g= (b*c)   //in series
h= (g*a)   //in series
j= (h*0.02)  //in series
k=j/(1+j*0.5);
a1=1/20;
cl=a1*k
disp(cl,"C(s)/R(s)=");
clf();
G=syslin('c',cl)
evans(G,200)
xgrid(2)
