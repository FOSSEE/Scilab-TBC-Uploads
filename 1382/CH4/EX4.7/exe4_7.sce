// Example 4.7: drain to source resisitance
clc, clear
//Given DATA
Vdd=5;//in volt
knwl=1;//in mA/V^2
Vd=0.1;//drain voltage
Vt=1;//in Volt
Id=Vt*((Vdd-Vt)*Vd- (1/2)*0.01);//drain current in milli ampere
Rd=(Vdd-Vd)/Id;// resistance in killo ohms
Rds= Vd/Id;//resistance in killo ohms
disp(Rds,"drain to source  resistance in killo ohms is")
