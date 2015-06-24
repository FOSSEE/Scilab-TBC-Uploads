clc
clear
//Input data
r=7.8;//Compression ratio 
p=1;//The pressure at the start of compression in atm
T1=335;//The temperature at the start of compression in K

//Calculations
W1=100;//Isentropic compression function for T1 in J/kg air K 
W2=W1-(292*log(1/r));//Isentropic compression function in J/kg air K 
T2=645;//The temperature corresponding to isentropic compression function in J/kg air K 
V1=(292*T1)/(p*10^5);//Volume at initial in m^3/kg air 
p2=p*(T2/T1)*r;//The pressure at the end of compression stroke in atm 
V2=V1/r;//The volume per unit mass of air at the end of the compression stroke in m^3/kg air 
U1=35;//Internal energy corresponding to temp T1 in kJ/kg air 
U2=310;//Internal energy corresponding to temp T2 in kJ/kg air 
W=U2-U1;//Work input during compression in kJ/kg air 
E1=120;//Isentropic compression function at T1 
E2=910;//Isentropic compression function at T2 
p21=[exp((E2-E1)/292)];//The pressure at the end of compression stroke in atm 

//Output
printf('(a)At the end of the compression stroke, \n  The temperature is %3.0f K \n The pressure is %3.0f atm \n The volume per unit mass of air is %3.3f m^3/kg air \n The pressure is %3.0f atm \n (b)The work input during compression is %3.0f kJ/kg air ',T2,p2,V2,p21,W)
