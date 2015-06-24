// Example 4.9: drain resisitance
clc, clear
//Given DATA
Vdd=5;//in volt
Id=0.5;//in mA
knwl=1;//in mA/V^2
Vt=-1;//in Volt
//Formula : ID=mu_n*Cox*W*(VGS-Vt)^2/(2*L)
VGS=sqrt((2*Id/knwl))+(Vt);//in Volt
Vd=3;//
Rd1=Vd/Id;//drain resistance in killo ohms
Vdm= Vd-Vt;//saturation mode operation
Rd2=Vdm/Id;//drain resistance in killo ohms
disp(Rd1,"drain resistance in killo ohms is")
disp(Rd2,"drain resistance in killo ohms is")
