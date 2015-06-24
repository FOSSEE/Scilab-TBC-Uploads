//consider a six cylinder internal combustion engine.
y=1.4;//specific heat ratio for air
Stroke=9.5;//stroke (cm)of the internal combustion engine
b=9;//bore(cm)of the internal combustion engine
P2=0.8*1.01*10^5;//pressure (N/m^2)before compression stroke
T2=250;//temperature(k) before compression stroke
//V2 and V3 are volume before and after compression stroke respectively and V4 and V5 volume before and after power stroke respectively.
r=10;//compression ratio(V2/V3)
f=0.06;//fuel to air ratio by mass
P3=P2*r^y //pressure after compression stroke(isentropic condition)
T3=T2*r^(y-1)//temperature after compression stroke
//chemical energy released in 1 Kg gasoline is 4.29*10^7 Joule so,heat released per Kg of fuel air mixture q equals:
q=4.29*10^7*0.06/1.06 
Cv=720;//specific heat ratio(J/Kg-K)at constant volume for air
T4=q/Cv+T3 //temperature before power stroke
P4=P3*T4/T3 //pressure before power stroke
P5=P4*(1/r)^y //pressure after power stroke from isentropic relation
n=0.83;//propeller efficiency
nm=0.75;//mechanical efficiency
rpm=3000;//rotation per minute for the engine
