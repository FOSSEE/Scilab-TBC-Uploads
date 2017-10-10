clc
clear
//INPUT DATA
Tmin=-30;//minimuum temperature in Degree C
Tmax=35;//maximum temperature in Degree C
S1=0.6839;//entropy in kJ/kgK from properties of R12 TABLES
S2=0.6893;//entropy in kJ/kgK from properties of R12 TABLES
S3=0.2559;//entropy in kJ/kgK from properties of R12 TABLES
S4=0.2559;//entropy in kJ/kgK from properties of R12 TABLES
S5=0.0371;//entropy in kJ/kgK from properties of R12 TABLES
S6=0.7171;//entropy in kJ/kgK from properties of R12 TABLES
h2=201.5;//enthalpy in kJ/kg from properties of R12 TABLES
h3=69.5;//enthalpy in kJ/kg from properties of R12 TABLES
h5=8.9;//enthalpy in kJ/kg from properties of R12 TABLES
h6=174.2;//enthalpy in kJ/kg from properties of R12 TABLES
Re=1*210;//Ref.capacity


//CALCULATIONS
x1=(S1-S5)/(S6-S5);//ratio fo entropies
x2=(S4-S5)/(S6-S5);//ratio fo entropies
h1=h5+x1*(h6-h5);//enthalpy at point 1
h4=h5+x2*(h6-h5);//enthalpy at point 4
Wc=h2-h1;//work of compression
We=h3-h4;//work of expansion
Qa=h1-h4;//Heat absorbed in kJ/kg
Qr=h2-h3;//Heat rejected in kJ/kg
Wn=Wc-We;//net workdone in kJ/kg
COP=(Qa/Wn);//COP
COPc=(Tmin+273)/(Tmax-Tmin);//COP Carnot
COPa=0.75*COPc;//Actual COP
P=Re/(COPa*60);//Power consumption per ton
Hr=(210/60)+P;//Heat rejected per ton

//OUTPUT
printf('(a)work of compression is %3.2f kJ/kg \n   work of expansion %3.1f kJ/kg \n   Heat rejected is %3.i kJ/kg \n   COP is %3.2f \n (b)Power consumption per ton is %3.2f kW \n  heat rejected per ton is %3.2f kW',Wc,We,Qr,COP,P,Hr)
