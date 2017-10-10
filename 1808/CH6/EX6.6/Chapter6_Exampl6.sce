clc
clear
//INPUT DATA
t21=335.19;//temperature in K
t3=343.19;//temperature in K
cp=0.64;//Specific pressure
m=0.008;//mass flow rate in kg/s
p1=4.4962;//pressure in MPa
p2=1.6;//pressure in MPa
hf1=47.26;//enthalpy in kJ/kg
hfg1=145.30;//enthalpy in kJ/kg
hg1=192.56;//enthalpy in kJ/kg
hf2=98.19;//enthalpy in kJ/kg
hfg2=111.62;//enthalpy in kJ/kg
hg2=209.81;//enthalpy in kJ/kg
sf1=0.1817;//entropy in kJ/kgK
sf2=0.6913;//entropy in kJ/kgK
sg1=0.3329;//entropy in kJ/kgK
sg2=0.6758;//entropy in kJ/kgK
t2=343;//from t-s diagram temperature in K

//CALCULATIONS
h2=hg2+cp*(t2-t3);//enthalpy in kJ/kg
wc=m*(h2-hg1);//compressor work in kJ/s
Rc=m*(hg1-hf2);//Refrigiration capacity in kW
Rc1=Rc*60/210;//Refrigiration capacity in TR
copv=Rc/wc;//COP of VCR system

//OUTPUT
printf('(a)The compressive work input is %3.2f kJ/s \n (b)Refrigiration capacity is %3.4f TR \n (c)COPvcr is %3.3f \n',wc,Rc1,copv)







