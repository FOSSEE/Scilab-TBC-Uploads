clc
//initialisation of variables
t1=305 //temp in k
r=0.287 //kj/kg
p2=6 //pressure in bar
p1=1.013 //pressure in bar
g=1.4 //const value
n=1.28
v1=100 //volume
//CALCULATIONS
rp=(p2/p1)
wiso=r*t1*log(p2/p1)
wadia=(g/(g-1))*r*t1*0.6623
wpoly=(n/(n-1))*r*t1*0.4756
m=(p1*v1*100)/(r*t1)
ipr=(wiso*m)/60
apr=(wadia*m)/60
//RESULTS
printf('work for isthermal compression is %2fknm/kg',wiso)
printf('\nwork for adiabatic compression is %2fknm/kg',wadia)
printf('\nwork for polytropic compression is %2fknm/kg',wpoly)
printf('\nmass of air compressed is %2fkg/min',m)
printf('\nisothermal power required is %2fkw',ipr)
printf('\nadiabatic power required is %2fkw',apr)
    
