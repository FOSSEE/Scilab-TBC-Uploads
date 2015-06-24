//Caption:calculate_reference_voltage_Vr
//example 5.9.5
//page 102
exec series.sce;
Vt=250//output_voltage
Rf=100//field_winding_resistance
Kg=500//generator_constant
A=2//amplifier
Vf=0.4//fraction_of_output_voltage_compared_with_reference_voltage
a=1/Rf;
b=series(A,a);
c=series(b,Kg);
d=c/.Vf;
disp(d,"Vt/Vr=");
//since Vt=250
Vr=Vt*(1/d);
disp(Vr,"reference_voltage=");

