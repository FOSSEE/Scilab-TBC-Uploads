//Caption:calculate_reference_voltage_Vr
//example 5.9.4
//page 102
exec series.sce;
A=2//amplifier
K=10//motor_field
N=100//speed
tg=0.1//tacho_generator
a=series(A,K);
b=a/.tg;
disp(b,"N/Vr=");
//since N=100
Vr=N*(1/b);
disp(Vr,"reference_voltage=");
