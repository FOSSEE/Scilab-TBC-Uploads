// Example 4.6: drain resisitance
clc, clear
//Given DATA
Vdd=10;//in volt
ID=0.4;//in mA
mu_nCox=20;//in uA/V^2
W=100;//in um
L=10;//in um
Vt=2;//in Volt
//Formula : ID=mu_n*Cox*W*(VGS-Vt)^2/(2*L)
VGS=sqrt(2*L*ID/(mu_nCox*10^-3*W))+(Vt);//in Volt
Vd=VGS;//
R=(Vdd-Vd)/ID;// resistance in killo ohms
disp(R,"drain resistance in killo ohms is")
