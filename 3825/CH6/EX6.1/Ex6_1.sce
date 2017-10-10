clc
mi=1 //in kg/second
me=mi
m=mi
Q=-10 //in kJ/s
hi=3276.6 //in kJ/kg
vi=80 //in metre/second
Zi=10 //in metres
hg=2584.8
hf=191.83
Xe=0.95
he=(hg*Xe)+(1-Xe)*hf
mprintf("he=%fkJ/kg\n",he)//ans vary due to roundoff error
g=9.81 
Ze=3
ve=150 //in metre/second
Ws=(Q*10^3)-((((he*10^3)+(ve^2/2)+(g*Ze))-((hi*10^3)+(vi^2/2)+(g*Zi)))*m)//from the first law of thermodynamics
mprintf("Ws=%fkW\n",Ws/1000)//ans vary due to roundoff error



