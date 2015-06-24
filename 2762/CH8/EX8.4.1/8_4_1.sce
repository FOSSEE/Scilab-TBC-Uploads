//Transport Processes and Seperation Process Principles
//Chapter 8
//Example 8.4-1
//Evaporation
//given data
Tf=37.8+273.2;//temp in K
xf=1/100;//wt % of salt in the feed
xl=1.5/100;//wt % of salt in the extract
//2 eqns to be solved
F=9072;//feel flow rate
xv=0;
A=[1 1;xl xv];
B=[F;(F*xf)];
LV=inv(A)*B;
L=LV(1,1);//liquid flow rate
V=LV(2,1);//vapour flow rate
Cpf=4.14;//heat capacity of the feed
T1=273.2+100;//bp of water at 101.32 Kpa(as given)
hf=Cpf*(Tf-T1);//enthalpy of feed
hl=0;//enthalpy of extract as it is at datum
hv=2257;//enthalpy of vapour
lemda=2230;//enthalpy of steam;
S=(L*hl+V*hv-F*hf)/lemda;//flow rate of steam
q=S*lemda*(1000/3600);//heat transfered through the heating surface area
U=1704;//heat transfer coefficient 
Ts=383.2;
A=q/(U*(Ts-T1));//heat transfer area
mprintf("i) extract flow rate= %f kg/h",L)
mprintf("ii) vapour flow rate= %f kg/h",V)
mprintf("iii) heat transfer area= %f m2",A)
//end
