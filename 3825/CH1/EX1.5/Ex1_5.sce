clc
mol1=0.25 //moles of nitrogen present in mixture
mol2=0.75 //moles of hydrogen present in mixture
molmass1=28*(10^(-3))//molar mass of nitrogen in kg
molmass2=2*(10^(-3)) //molar mass of hydrogen in kg
mixturemass=(mol1*molmass1)+(mol2*molmass2)//mass of mixture of nitrogen and hydrogen
mprintf("One mole mixture=%fkg\n",mixturemass)
Frate1=100 //flow rate of mixture in kg/min
Frate2=Frate1/mixturemass //flow rate in  kmol/min
mprintf("100kg mixure/min=%fkmol/min",Frate2/1000)//ans varies due to roundoff error




