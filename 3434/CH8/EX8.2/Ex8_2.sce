clc
// given data
Gaslight=10*0.227*4 // gas required for lighting in m^3/day
Eleccomp=10*250*6*60*60/1000000.0 // electrical energy required by computers in MJ
effith=0.25 // thermal efficieny
efficonv=0.80 // conversion efficiency
Heat=23.0 // heating value of biogas in MJ/m^3
rho=1090.0 // slurry density in kg/m^3
Engineinput=Eleccomp/(effith*efficonv)

energypump=746*2*2*60*60/1000000.0 // mechanical energy required for pumping in MJ
themalinput=energypump/effith  // required thermal input in MJ
totalinput=themalinput+Engineinput // total thermal input required by engine

Volreq=totalinput/Heat // volume required per day in m^3/day
Totalrq=Volreq+Gaslight // total gas required in m^3 /day

n=Totalrq/(7*0.18*0.34) // solid mass is 18% and n is number of cows required
n=round(n)
printf("The number of cows is %i",n)
feed=7*n // daily feed in kg
slurry=2*feed // in kg
volslurry=slurry/rho // volume of slurry added per day in m^3
totalvol=50*volslurry/0.9 // total volume for 50 days in m^3 when 90 % is occupied by slurry

printf("\n The size of biogas plant is %.2f m^3",totalvol)




