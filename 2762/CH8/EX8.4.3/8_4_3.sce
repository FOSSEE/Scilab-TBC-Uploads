//Transport Processes and Seperation Process Principles
//Chapter 7
//Example 8.4-3
//Evaporation
//given data
F=4536;//feed flow rate in kg/h
xf=0.2;//wt fraction of NaOH in feed
Tf=60;
P1=11.7;// In kPa
Ps=172.4;//steam pressure in kPa
xl=0.5;//wt fraction of NaOH in liq
xv=0;
A=[1 1;xl xv];
B=[F;(F*xf)];
LV=inv(A)*B;
L=LV(1,1);//liquid flow rate
V=LV(2,1);//vapour flow rate
Tbp1=48.9;//boiling pt of water at P1 and 50% concn
Tbp2=89.5;//boiling pt of soln at Tbp1 and 50% concn from durhing chart
bpr1=Tbp2-Tbp1;//boiling point rise
hf=214;//(20% sol) kJ/kg from enthalpy concn chart
hl=505;//(50% sol)kJ/kg from enthalpy concn chart
Hv=2667;//steam tables for superheated steam
Cps=1.884;//enthalpy of superheated steam

lemda=2214;//latent heat of steam
S=(L*hl+V*Hv-F*hf)/lemda;//flow rate of steam
q=S*lemda*(1000/3600);
U=1560;
T1=115.6;
A=q/(U*(T1-Tbp2));//heat transfer area
SE=V/S;//steam economy
mprintf("i) steam flow rate= %f kg/h",S)
mprintf("ii) steam economy %f",SE)
mprintf("iii) heat transfer area= %f m2",A)
//deviations may occur due apprroximated values taken in the textbook
