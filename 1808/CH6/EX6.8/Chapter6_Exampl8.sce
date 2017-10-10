clc
clear
//INPUT DATA
cpv2=2.805;//specific pressure kJ/kgk
cpv3=4.606;//specific pressure kJ/kgK
t21=303;//condenser temperature in K
t1=258;//evaporator temperature in K
t31=283;//subcooled temperature in K
nv=0.8;//volumetric efficiency in percentage
p1=2.36;//pressure in MPa
p2=11.67;//pressure in MPa
hf1=112.3;//enthalpy in kJ/kg
hfg1=1313.7;//enthalpy in kJ/kg
hg1=1426;//enthalpy in kJ/kg
hf2=323.1;//enthalpy in kJ/kg
hfg2=1145.9;//enthalpy in kJ/kg
hg2=1469;//enthalpy in kJ/kg
sf1=0.457;//entropy in kJ/kgK
sf2=1.204;//entropy in kJ/kgK
sg1=5.549;//entropy in kJ/kgK
sg2=4.984;//entropy in kJ/kgK
v1=0.509;//volume in m^3/kg
t2=369.69;//from t-s diagram temperature in K


//CALCULATIONS
h2=hg2+cpv2*(t2-t21);//enthalpy in kJ/kg
h31=hf2-cpv3*(t21-t31);//enthalpy in kJ/kg
Re1=hg1-hf2;//refrigeration effect in kJ/kg
Re2=hg1-h31;//refrigeration effect in kJ/kg
mt1=210/Re1;//mass flow rate per ton in kg/min
mt2=210/Re2;//mass flow rate per ton in kg/min
vsa1=(mt1*v1)/nv;//compressor volume capacity
vsa2=(mt2*v1)/nv;//compressor volume capacity
wn=h2-hg1;//net work done
cop1=Re1/wn;//COP
cop2=Re2/wn;//COP
pcop=((cop1-cop2)/cop2)*100;//Percentage COP of dry and subcooled
pt1=wn*mt1/60;//Power per ton in kW/TR
pt2=wn*mt2/60;//Power per ton in kW/TR

//OUTPUT
printf('DRY COMPRESSION \n(a)Refrigeration effect is %3.1f kJ/kg \n (b)The flow rate of refrigerant per ton is %3.4f kg/min \n (c)The compressor volume capacity %3.2f \n (d)COP is %3.2f \n (e)The power per TR is %3.2f kW/TR \n',Re1,mt1,vsa1,cop1,pt1)

printf('DRY AND SUBCOOLED \n(a)Refrigeration effect is %3.1f kJ/kg \n (b)The flow rate of refrigerant per ton is %3.4f kg/min \n (c)The compressor volume capacity %3.2f \n (d)COP is %3.2f \n (e)The power per TR is %3.2f kW/TR',Re2,mt2,vsa2,cop2,pt2)

