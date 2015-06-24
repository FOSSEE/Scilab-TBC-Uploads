clc
clear
//Input data
r=8;//The compression ratio 
T1=350;//The given temperature at the start of compression in K
p=1;//The given pressure at the start of compression in bar
f=0.08;//The exhaust residual fraction 
cv=44000;//The calorific value in kJ/kg

//Calculations
W1=150;//Isentropic compression functions for corresponding temp T1 in J/kg air K
W2=W1-(292*log(1/r));//Isentropic compression function in J/kg air K 
T2=682;//The temperature corresponding to isentropic compression function in K 
V1=(292*T1)/(p*10^5);//The initial volume in m^3/kg air 
p2=p*(T2/T1)*r;//The pressure at point 2 in atm
V2=V1/r;//The volume at point 2 in m^3/kg air 
us2=350;//The internal energy corresponding to temp T2 in K
us1=40;//The internal energy corresponding to temp T1 in K 
Wc=us2-us1;//Adiabatic compression work in kJ/kg air 
ufu=-118.5-(2963*f);//The internal energy of formation in kJ/kg air 
u3=us2+ufu;//The internal energy at point 3 in kJ/kg air 
V3=V2;//The volume at point 3 in m^3/kg air 
T3=2825;//The temperature at point 3 corresponding to u3,V3 on the burned gas chart in K
p3=7100;//The pressure at point 3 in kN/m^2 
s3=9.33;//Entropy at point 3 in kJ/kg air K 
s4=s3;//Entropy is same in kJ/kg air K 
V4=V1;//The volume at point 4 in m^3/kg air 
u4=-1540;//The internal energy at point 4 corresponding to V4,s4 in kJ/kg air 
p4=570;//The pressure at point 4 in kN/m^2 
T4=1840;//The temperature at point 4 in K 
We=u3-u4;//The expansion work in kJ/kg air 
Wn=We-Wc;//The net work output in kJ/kg air 
nth=[(Wn)/((1-f)*0.0662*cv)]*100;//The indicated thermal efficiency in percent 
imep=((Wn*1000)/(V1-V2))/10^5;//The indicated mean effective pressure in bar 
nv=[((1-f)*287*298)/(1.013*10^5*(1-0.125))]*100;//The volumetric efficiency in percent 

//Output
printf('(a)At point 2, \n The temperature is %3.0f K \n The pressure is %3.1f atm \n At point 3, \n The temperature is %3.0f K \n The pressure is %3.0f kN/m^2 \n At point 4, \n The temperature is %3.0f K \n The pressure is %3.0f kN/m^2 \n (b)The indicated thermal efficiency is %3.1f percent \n (c)The indicated mean effective pressure is %3.0f bar \n (d)The volumetric efficiency is %3.1f percent',T2,p2,T3,p3,T4,p4,nth,imep,nv)
