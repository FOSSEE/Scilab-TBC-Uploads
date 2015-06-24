clc
//initialisation of variables
v=2000//cu ft
p=0.7//percent
t1=60//F
t2=90//F
t3=100//F
k=32//ft
p1=14.0//psia
p2=0.5//percent
q=0.622//ft
p3=0.2563//psia
h=0.6982//ft
w1=1061.0//ft
w2=0.445//ft
g=0.24//ft
d=2000//ft
t4=60//F
t5=460//F
//CALCULATIONS
P=p*p3//psia
H=q*(P/(p1-P))//lb per lb dry air
Pv=p2*h//psia
H1=q*(Pv/(p1-Pv))//lb per lb dry air
S=H1-H//lb water per lb dry air
H2=g*(t1)+H*[(w1+w2*(t1))]//Btu per lb dry air
H3=S*(t3-k)//Btu per lb dry air
H4=g*(t2)+H1*[(w1+w2*(t2))]//Btu per lb dry air
Q=H4-(H2+H3)//Btu per lb dry air
Wa=(144*(p1-P)*d)/(53.3*(t4+t5))//lb
T=Wa*Q//Btu
//RESULTS
printf('the total heat added equals is =% f Btu',T)
