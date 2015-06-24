clc
//initialisation of variables
u=170 //blade velocity in m/s
ra=0.2 //ratio of blade speed to steam speed
cril=696 //m/s
co1=0.84 //velocity coefficient 
co2=0.87 //velocity coefficient
co3=0.90 //velocity coefficient
cri2=232 //m/s
//CALCULATIONS
ci=u/ra
crol=cril*co1
ci2=crol*co2
cro2=cri2*co3
wd=(1176+344)*u*10^-3
beff=wd*1000*2/(ci^2)
//RESULTS
printf('work developed in the blade is %2fkj/kg',wd)
printf('\nblading efficiency is %2f',beff)
