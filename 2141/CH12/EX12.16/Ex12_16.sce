
clc
//initialisation of variables
gf=29306//Btu/lb mole fuel
gf1=2*(-169677)//Btu/lb mole fuel
gf2=2*(-98345)//Btu/lb mole fuel
//CALCULATIONS
W=gf-gf1-gf2//Btu/lbm
//RESULTS
printf('the reversible work for this process=% f Btu/lbm',W)
