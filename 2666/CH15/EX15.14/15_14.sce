clc
//initialisation of variables
t1=120//F
t2=82//F
s1=2800//ft
p=14.7//ft
p1=1.3//ft
pv=0.5410//psia
s2=0.622//ft
s=0.02372//lb per lb dry air
//CALCULATIONS
P=pv-((p-pv)*(t1-t2)/(s1-p1*(t2)))//psia
H1=s2*(P/(p-P))//lb per lb dry air
H2=s2*(pv/(p-pv))//lb per lb dry air
M=H2-H1//lb per lb dry air
S=s-H1//lb per lb dry air
//RESULTS
printf('the water vaporized equals=% f lb per lb dry air',S)
