// Example 4.8: Analyse the circuit
clc, clear
//Given DATA
Vdd=10;//in volt
ID=0.4;//in mA
knwl=1;//in mA/V^2
Vg=5;//gate voltage in volys
Vt=1;//in Volt
Rd=6'//drain resistance in killo ohms
Id=0.5;//in mA after solving the qudratic equation
Vs= Id*Rd;//source voltage in volts
Vd= Vdd-Rd*Id;//drain voltage in volts
Vgs= Vg-Rd*Id;//gate to source voltage in volts
disp(Vs,"source voltage in volts")
disp(Vd,"drain voltage in volts")
disp(Vgs,"gate to source voltage in volts")
disp(Id,"drain current in milli ampere")
disp("As Vd>Vg-Vt the transistor is operating at saturation as initially assumed")
