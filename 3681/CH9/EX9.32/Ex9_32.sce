// Calculating the minimum number of poles
clc;
disp('Example 9.32, Page No. = 9.92')
// Given Data
P = 1200;// Power rating (in kW)
Ec = 15;// Average voltage between commutator segments (in Volts)
ATa = 10000;// Armature mmf per pole
// Calculation of the minimum number of poles
a = P*10^(3)/(ATa*Ec);// Minimum number of parallel paths
p = a;// Minimum number of poles.  Since these parallel paths can be obtained by using a simplex winding
disp(p,'Minimum number of poles =');
//in book answer is 8 poles.  The answers vary due to round off error
