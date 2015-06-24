clc
// given data
Gascook=5*0.227 // gas required for cooking in m^3/day
Gaslight=0.126*2*3 // gas required for lighting in m^3/day
Totalgasreq=Gascook+Gaslight // in m^3/day
gasperday=0.34*0.18*7 // in m^3/day

n=1+Totalgasreq/gasperday // no. of cows
printf("The number of cows is %i",n)
cowfeed=7*n // in kg
slurry=cowfeed*2.0/1090 // in m^3
totalslurry=50.0*slurry // in m^3
reqvolume=totalslurry/0.9 
printf("\n The total volume of digester is %.2f m^3",reqvolume)
