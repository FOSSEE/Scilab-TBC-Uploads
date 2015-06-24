clc
// given data
drymattrprd=2 // dry matter produced in kg/day/cow
gasyield=0.22 // biogas yield in m^3 /kg
drymttr=18/100.0 // dry matter in cowdung
rho=1090 // slurry density in kg/m^3
effibrnr=0.6 // burner efficiency
Heat=23.0 // heating value of biogas in MJ/m^3

dungprd=drymattrprd*2/0.18 // dung produce in kg/day by 2 cows
slurry=2*dungprd // slurry produce in kg/day
volslurry=slurry/rho // volume of slurry in m^3
totalslurry=30*volslurry // for 30 days slurry in m^3
digestersize=totalslurry/0.85 // in m^3
printf("the volume of digester is %.2f m^3",digestersize)

gasprd=drymattrprd*2*gasyield // gas produced in m^3/day

Energytherm=gasprd*Heat*effibrnr // total thermal energy available in MJ/day


thermalpower=Energytherm*1000000/(24*60*60) // in watts

printf (" \n total thermal power is %.2f W",thermalpower)





