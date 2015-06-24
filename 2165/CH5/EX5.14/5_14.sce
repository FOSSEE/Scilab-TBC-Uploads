clc
//initialisation of variables
T1=30//Degree c
T2=-10//degree C
t1=263//F
t2=303//F
h1=20//Units
h2=79//C.H.U/lb
h=24//hours
T3=1//Degree C
p=2.2046//C.H.U/sec
//CALCULATIONS
P=h1*p//C.H.U/sec
T=t1/(t2-t1)//F
H=P*60//C.H.U
W=(H*1400)/T//ft/lb
hp=W/33000//h.p
W1=(H*60*h)/(80*2240)//tons
//RESULTS
printf('the cycle is a perfect one=% f tons',W1)
