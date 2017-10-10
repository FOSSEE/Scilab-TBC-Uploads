clc
clear
//INPUT DATA
t1=12;//dry bulb temperature in Degree c
t4=40;//dry bulb temperature in Degree c
x1=0.9;//realtive humidity in percentage
t41=25;//wet bulb temperature in Degree c
x3=0.8;//realtive humidity in percentage
ps1=10.503;//Saturation temperature in mm Hg
pv4a=23.74;//Saturation temperature in mm Hg
t3=22.5;//dry bulb temperature in Degree c
cp=1.005;//specific pressure
p=760;//pressure in mm of Hg
t5=20.8;//dry bulb temperature in Degree c

//CALCULATIONS
pv1=x1*ps1;//Saturation temperature in mm Hg
w1=0.622*(pv1/(p-pv1));//Specific humidity in kg w.v./kg d.a
pv4=(pv4a-((p-pv4a)*(t4-t41)*1.8)/(2800-(1.3*(1.8*t4+32))));//Saturation pressure in mm Hg
ps3=pv4/x3;//Saturation temperature in mm Hg
w3=0.622*(pv4/(p-pv4));//Specific humidity in kg w.v./kg d.a
h3=cp*t3+w3*(2500+1.88*t3);//Enthalpy of air per kg of dry air in kJ/kg d.a.
t2=(h3-(w1*2500))/1.0191;//dry bulb temperature in Degree c
h4=cp*t4+w3*(2500+1.88*t4);//Enthalpy of air per kg of dry air in kJ/kg d.a.
h1=cp*t1+w1*(2500+1.88*t1);//Enthalpy of air per kg of dry air in kJ/kg d.a.
ht=(h4-h1);//Enthalpy of air per kg of dry air in kJ/kg d.a.
mw=(w3-w1);//Additional water required in the air washer in kg w.v./kg d.a.
nh=((t2-t3)/(t2-t5))*100;//humidifier efficiency in percentage

//OUTPUT
printf('(a)Temperature at the end of the preheating is %3.2f Degree c \n (b)Total heat required is %3.2f kJ/kg d.a.\n (c)Additional heat required in the air washeer is %3.6f kg w.v./kg d.a.\n (d)humidifier efficiency is %3.2f percentage',t2,ht,mw,nh)


