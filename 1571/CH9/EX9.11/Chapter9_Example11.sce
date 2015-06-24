clc
clear

//INPUT
p=200;//horse power of steam engine in lbs coal per hour
j=770;//joules constant in ft lbs per B.Th.U

//CALCULATIONS
w=12500*p*j;//equivalent work in ft.lb.per.hr
hp=w/(60*33000);//horse power

//OUTPUT
mprintf('hoose power of the engine is %3.2f',hp)
