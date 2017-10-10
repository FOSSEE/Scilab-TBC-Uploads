//ques-2.25
//Calculating minimum air for combustion of 1kg petrol and actual air supplied per kg of petrol and calorific values of petrol sample
clc
C=840;//weight of carbon in petrol sample (in g)
H=160;//weight of hydrogen in petrol sample (in g)
v1=0.121;//volume of CO2 in flue gas (in m^3)
v2=0.011;//volume of CO in flue gas (in m^3)
v3=0.013;//volume of O2 in flue gas (in m^3)
v4=0.855;//volume of N2 in flue gas (in m^3)

//Part (i)
w1=C*(32/12);//weight of oxygen for C (in g)
w2=H*(16/2);//weight of oxygen for H (in g)
m1=C*(44/12);//weight of CO2 as dry product (in g)
t=w1+w2;//total oxygen required (in g)
min_air=t*(100/23);//minimum weight of air (in g)
printf("The minimum weight of air required for complete combustion of 1kg petrol is %.3f kg.\n",min_air/1000);

//Part (ii)
a1=v1*44;//VxM for CO2 in flue gas
a2=v2*28;//VxM for CO in flue gas
a3=v3*32;//VxM for O2 in flue gas
a4=v4*28;//VxM for N2 in flue gas
T=a1+a2+a3+a4;//total
f1=a1/T;//Mass/kg of CO2
f2=a2/T;//Mass/kg of CO
f3=a3/T;//Mass/kg of O2
f4=a4/T;//Mass/kg of N2
M_O=a3-a2*(16/28);//mass of excess O2/kg of flue gas (in kg)
M_C=a1*(12/44)-a2*(12/28);//mass of C/kg of flue gas (in kg)
M_F=(C/1000)/M_C;//mass of flue gas/kg of petrol (in kg)
E_O=M_O*M_F;//excess O2/kg of petrol burnt (in kg)
E_air=E_O*(100/23);//excess air/kg of petrol burnt (in kg)
actual=(min_air/1000)+E_air;//actual air used (in kg)
printf(" Actual amount of air required is %.3f kg.\n",actual);

//Part (iii)
HCV=(8080*(C/10)+34500*(H/10))/100;//HCV of fuel (in kcal/kg)
printf(" Higher calorific value of fuel is %d kcal/kg.",HCV);
