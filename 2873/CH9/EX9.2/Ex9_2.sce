// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 9 Example 2")
Pa=138;//pressure during compression at 1/8 of stroke in KPa
Pb=1.38*10^3;//pressure during compression at 7/8 of stroke in KPa
n_ite=0.5;//indicated thermal efficiency
n_mech=0.8;//mechanical efficiency
C=41800;//calorific value in KJ/kg
y=1.4;//expansion constant
disp("as given")
disp("Va=V2+(7/8)*(V1-V2)")
disp("Vb=V2+(1/8)*(V1-V2)")
disp("and also")
disp("Pa*Va^y=Pb*Vb^y")
disp("so (Va/Vb)=(Pb/Pa)^(1/y)")
(Pb/Pa)^(1/y)
disp("also substituting for Va and Vb")
disp("(V2+(7/8)*(V1-V2))/(V2+(1/8)*(V1-V2))=5.18")
disp("so V1/V2=r=1+(4.18*8/1.82)")
r=1+(4.18*8/1.82)
disp("it gives r=19.37 or V1/V2=19.37,compression ratio=19.37")
disp("as given;cut off occurs at(V1-V2)/15 volume")
disp("V3=V2+(V1-V2)/15")
disp("cut off ratio,rho=V3/V2")
rho=1+(r-1)/15
disp("air standard efficiency for diesel cycle(n_airstandard)=1-(1/(r^(y-1)*y))*((rho^y-1)/(rho-1))")
n_airstandard=1-(1/(r^(y-1)*y))*((rho^y-1)/(rho-1))
disp("in percentage")
n_airstandard=n_airstandard*100
disp("overall efficiency(n_overall)=n_airstandard*n_ite*n_mech")
n_airstandard=0.6325;
n_overall=n_airstandard*n_ite*n_mech
disp("in percentage")
n_overall=n_overall*100
disp("fuel consumption,bhp/hr in kg=")
n_overall=0.253;
75*60*60/(n_overall*C*100)
disp("so compression ratio=19.37")
disp("air standard efficiency=63.25%")
disp("fuel consumption,bhp/hr=0.255 kg")






