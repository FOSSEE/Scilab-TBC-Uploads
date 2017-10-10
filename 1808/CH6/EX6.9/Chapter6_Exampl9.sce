clc
clear
//INPUT DATA
cpic=1.94;//specific pressure inkJ/kgK
cpv2=2.805;//specific pressure in kJ/kgK
t21=303;//condenser temperature in K
t1=258;//evaporator temperature in K
t31=293;//subcooled temperature in K
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
t2=369.7;//from t-s diagram temperature in K
nac=0.8;//adiabatic efficiency in percentage
vsa=2.96;//volume in kg/min
N=1200;//speed in rpm

//CALCULATIONS
h2=hg2+cpv2*(t2-t21);//enthalpy in kJ/kg
Rc=10*1000*(4.1868*30+335+1.94*5)/(24*60);//Refrigeration capacity in kJ/min
Re=hg1-hf2;//Refrigeration effect in kJ/kg
m=Rc/Re;//mass flow rate of refrigerant in kg/min
h2a=((h2-hg1)/nac)+hg1;//enthalpy in kJ/kg
t2a=((t2-t1)/nac)+t1;//Temperature in k
d=(vsa*0.509*4/(3.14*1.2*N))^(1/3);//piston displacement of compressor in m
l=1.2*d;//length of piston displacement in m
w=(h2a-hg1)/0.95;//workdone in kJ/kg
wac=m*w/60;//Power of the compressor motor in kW
copa=(Re/wac)*(m/60);//COP of air 

//OUTPUT
printf('(a)Refrigeration capacity is %3.1f kJ/min \n (b)Mass flow rate of refrigerant is %3.2f kg/min \n (c)The discharge temperature is %3.2f K \n (d)Piston displacement of the compressor is d %3.4f m \n   l is %3.4f m \n(e)Power of the compressor motor is %3.2f kW \n (f)COPa is %3.3f',Rc,m,t2a,d,l,wac,copa)












