clc
clear
//INPUT DATA
cp1=1.00;//specific entropy in kJ/kgK
cpv=0.733;//specific entropy in kJ/kgK
t21=303;//condenser temperature in K
t1=265;//evaporator temperature in K
t31=293;//subcooled temperature in K
p1=2.354;//pressure in Bar
p2=7.451;//pressure in Bar
hf1=28.72;//enthalpy in kJ/kg
hg1=184.07;//enthalpy in kJ/kg
hf2=64.59;//enthalpy in kJ/kg
hg2=199.62;//enthalpy in kJ/kg
sf1=0.1149;//entropy in kJ/kgK
sf2=0.24;//entropy in kJ/kgK
sg1=0.7007;//entropy in kJ/kgK
sg2=0.6853;//entropy in kJ/kgK
vg1=0.079;//entropy in kJ/kgK
vg2=0.0235;//entropy in kJ/kgK
v1b=0.772;//entropy in kJ/kgK
t2=309.43;//temperature in K

//CALCULATIONS
//(i)WET COMPRESSION
x=((sg2-sf1)/(sg1-sf1));//fraction
h1b=hf1+x*(hg1-hf1);//enthalpy in kJ/kg
h2=hg2+cpv*(t2-t21);//enthalpy in kJ/kg
s1a=sg1+cpv*log(271/t1);//entropy in kJ/kgK
t2a=(s1a-sg1)/(cpv*t21);//temperature in K
h2a=hg2+cpv*(t2a-t21);//enthalpy in kJ/kg
h1a=hg1+cpv*(271-t1);//enthalpy in kJ/kg
h31=hf2-cpv*(t21-298);//enthalpy in kJ/kg
Re1=h1b-hf2;//Refrigeration effect in wet condition
Re2=hg1-hf2;//Refrigeration effect in wet condition
Re3=h1b-hf2;//Refrigeration effect in wet condition
Re4=hg1-hf2;//Refrigeration effect in wet condition
wn1=hg2-h1b;//net workdone in kJ/kg
wn2=h2-hg1;//net workdone in kJ/kg
wn3=h2a-hg1;//net workdone in kJ/kg
wn4=h2-hg1;//net workdone in kJ/kg
cop1=Re1/wn1;//COP
cop2=Re2/wn2;//COP
cop3=Re3/wn3;//COP
cop4=Re4/wn4;//COP
m1=2100/Re1;//mass flow rate
m2=2100/Re2;//mass flow rate
m3=2100/Re3;//mass flow rate
m4=2100/Re4;//mass flow rate
P1=m1*wn1/60;//Power in kW
P2=m2*wn2/60;//Power in kW
P3=m3*wn3/60;//Power in kW
P4=m4*wn4/60;//Power in kW
Pt1=P1/10;//Power per TR
Pt2=P2/10;//Power per TR
Pt3=P3/10;//Power per TR
Pt4=P4/10;//Power per TR
d1=((m1*v1b/0.00084883)^(1/3))/100;//displacement in m
d2=((m2*vg1/0.00084883)^(1/3))/100;//displacement in m
d3=((m3*vg1/0.00084883)^(1/3))/100;//displacement in m
d4=((m4*vg1/0.00084883)^(1/3))/100;//displacement in m
l1=1.5*d1;//stroke in m
l2=1.5*d2;//stroke in m
l3=1.5*d3;//stroke in m
l4=1.5*d4;//stroke in m


//OUTPUT
printf('((i)WET COMPRESSION \n (a)cop is %3.2f \n (b)The power is %3.3f kW/TR \n (c)Bore is %3.5f m \n stroke is %3.4f m \n (d)mass flow rate of refrigerant is %3.1f kg/min \n',cop1,P1,d1,l1,m1)

printf('((ii)DRY COMPRESSION \n (a)cop is %3.2f \n (b)The power is %3.3f kW/TR \n (c)Bore is %3.5f m \n stroke is %3.4f m \n (d)mass flow rate of refrigerant is %3.1f kg/min \n',cop2,P2,d2,l2,m2)

printf('((iii)SUPERHEATED \n (a)cop is %3.2f \n (b)The power is %3.3f kW/TR \n (c)Bore is %3.5f m \n stroke is %3.4f m \n (d)mass flow rate of refrigerant is %3.1f kg/min \n',cop3,P3,d3,l3,m3)

printf('((iv)DRY COMPRESSION AND SUBCOOLED \n (a)cop is %3.2f \n (b)The power is %3.3f kW/TR \n (c)Bore is %3.5f m \n stroke is %3.4f m \n (d)mass flow rate of refrigerant is %3.1f kg/min \n ',cop4,P4,d4,l4,m4)
