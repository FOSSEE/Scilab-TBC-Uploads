clc
cv=1.25; //kJ/kg.K
T1=530; //K
v1=0.0624; //m^3/kg
v2=0.186; //m^3/kg
dT_31=25; //K
T3=T1-dT_31; //K
dT_21=165; //K
T2=T1-dT_21; //K
// Path 1-2 : Reversible adiabatic process
ds_12=0;

// To calculate (s3–s1) a reversible path has to be selected joining 3 and 1.This is achieved by selecting the reversible adiabatic path 1-2 and the reversible constant volume process 2-3.

// Path 1-3 : Adiabatic process
v3=0.186; //m^3/kg
v3=v2;
ds_13=cv*log(T3/T2);
disp("Chang in entropy = ")
disp(ds_13)
disp("kJ/kgK")