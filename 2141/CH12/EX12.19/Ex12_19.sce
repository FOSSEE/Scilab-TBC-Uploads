
clc
//initialisation of variables
Tair=260*720 //R
Tprod=1520*1980 //R
Vair=300 //ft/sec
Vprod=450 //ft/sec
Tfuel=120 //F
FA=0.0211 //lbm fuel/lbm air
Hr=-105076+6355 //Btu/lb mole fuel
Hp=-2174656+54243 //Btu/lbm mole fuel
P=114.23 //mole
m=4.76 //mole air
n=47888//mole
q=28.95//mole
p1=0.0211//mole
//CALCULATIONS
N=-(-Hr+Hp)/n//moles O2/mole fuel
M=m*N //mole
FAIdeal=P/(M*q)
n=(FAIdeal/p1)*100//per cent
//RESULTS
printf('The comustion chamber of a gas turbine=% f per cent',n)
