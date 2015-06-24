clc
//initialisation of variables
Ox=2.679//lb
O2=Ox-0.03//lb O2/lb fuel
o2=O2*100/23//lb air lb fuel
E=o2/2//lb
a=17.325//lb /lb fuel
Co2=3.294//lb
H2o=0.315//lb
N2o=13.34//lb
O2=23/100*E//lb
So2=0.005*2//lb
//CALCULATIONS
W=Co2+N2o+O2+So2//lb /lb fuel
//RESULTS
printf('the totel weight of dry products=% f lb /lb fuel',W)
