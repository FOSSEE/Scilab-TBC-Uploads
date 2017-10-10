clc
P1=2//pressure in bar
vg=0.8854//in metre-cube/kg
Pa=1//pressure in bar
K=250//spring constant in kN/m
A=0.05//cross-sectional area in metre-square
h1=2706.3//in kJ/kg
v1=vg
V1=vg/10
P2=4 //pressure in bar
V0=V1-((((P1-Pa)*10^5)*(A*A))/(K*10^3))//from force balance equation
mprintf("V0=%fmetre-cube\n",V0)//ans vary due to roundoff error
V2=((((P2-Pa)*10^5)*(A*A))/(K*10^3))+V0//from force balance equation
mprintf("V2=%fmeter-cube\n",V2)//ans may vary due to roundoff error
Tc=500//temperature in degree celsius
Td=600//temperature in degree celsius
vc=0.8892//in metre-cube/kg
vd=1.0054//in metre-cube/kg
v2=V2*10
T=Tc+(((Td-Tc)/(vd-vc))*(v2-vc))//by interpolation
mprintf("T=%fdegree-celsius\n",T)//ans vary due to roundoff error
h2=3515.2//in kJ/kg
u2=(h2*10^3)-(P2*10^5*v2)//first law of thermodynamics
mprintf("u2=%fkJ/kg\n",u2/1000)//ans vary due to roundoff error
W=(((P1+P2)*10^5)*(V2-V1))/2//from P-V diagram in textbook
mprintf("W=%fkJ\n",W/1000)//ans vary due to roundoff error
u1=(h1*10^3)-(P1*10^5*v1)//first law of thermodynamics
deltaU=u2-u1
Q=(deltaU/10^4)+(W/1000)//first law of thermodynamics
mprintf("Q=%fkJ",Q)//ans vary due to roundoff error








