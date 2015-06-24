//example 2
//exergy transfer from a furnace
clear
clc
T0=537 //environmental temperature in R
Th=2000 //furnace temperature in R
nthrev=1-T0/Th //thermal efficiency of reversible heat engine
Qin=3000 //heat transfer rate from furnace in Btu/s
Wrev=nthrev*Qin //exergy of the furnace in Btu/s
printf("\n Hence, the rate of exergy flow associated with this heat transfer is = %.0f Btu/s. \n",Wrev);