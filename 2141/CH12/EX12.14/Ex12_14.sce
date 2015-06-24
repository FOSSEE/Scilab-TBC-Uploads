
clc
//initialisation of variables
hf=-25929//Btu/lb mole
hp=-903953//Btu/lb mole
Hr1=-19901//Btu/lbm
r=44.10//Btu/lb
//CALCULATIONS
H=-hf-(-hp)//Btu/lb mole
hR=(H/r)//Btu/lbm
//RESULTS
printf('the enthalpy of combustion o gas=% f Btu/lbm',hR)
