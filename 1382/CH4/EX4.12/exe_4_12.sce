// Example 4.12:input resistance
clc, clear
//Given DATA
Vdd=15;//in volt
knwl=0.25;//in mA/V^2
Va=50;//voltage
Vt=1.5;//in Volt
Id=1.06;//drain current in milli ampre
Vd= 4.4;//drain oltage in volt
Vgs=Vd;//
gm=knwl*(Vgs-Vt);//transconductance in mA/V
ro=Va/Id;//output resistance in killo ohms
Rd=10;//drain resistance in killo ohms
Rg=10;//gate resistance in killo ohms
Rl=10;//load resistance in killo ohms
x=(Rd*Rl)/(Rd+Rl);//
Av= -gm*((x*ro)/(x+ro));//voltage gain
Ii=4.3;//input current in milli ampere
Ri= Rg/Ii;//input resistance in mega ohms
disp(Ri,"input resistance in mega ohms")
