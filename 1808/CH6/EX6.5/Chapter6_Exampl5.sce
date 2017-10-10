clc
clear
//INPUT DATA
tmin=293;//minimum temperature in K
t3=317;//temperature in K
m=0.008;//mass flow rate in kg/s
hf1=54.81;//enthalpy in kJ/kg
hfg1=140.91;//enthalpy in kJ/kg
hg1=195.78;//enthalpy in kJ/kg
hf2=78.68;//enthalpy in kJ/kg
hfg2=125.87;//enthalpy in kJ/kg
hg2=204.54;//enthalpy in kJ/kg
vf1=0.2078;//entropy in kJ/kgK
vf2=0.2845;//entropy in kJ/kgK
vg1=0.6884;//entropy in kJ/kgK
vg2=0.6814;//entropy in kJ/kgK
t2=320.49;//from t-s diagram temperature in K
cp=0.64;//specific pressure

//CALCULATIONS
h2=hg2+cp*(t2-t3);//enthalpy in kJ/kg
wc=m*(h2-hg1);//compressor work in kJ/s
Rc=m*(hg1-hf2);//Refrigiration capacity in kW
Rc1=Rc*60/210;//Refrigiration capacity in TR
copv=Rc/wc;//COP of VCR system
copc=(tmin/(t3-tmin));//COP of carnot refrigeration cycle in percentage

//OUTPUT
printf('(a)The compressive work input is %3.5f kJ/s \n (b)Refrigiration capacity is %3.4f TR \n (c)COPvcr is %3.3f \n (d)COPc is %3.3f',wc,Rc,copv,copc)


