
clc
//initialisation of variables
Sr=2704.72//Btu/lb molr fuel-R
Sp=3229.21//Btu/lb mole fuel-R
I=536.7*524.49//Btu/lb mole fuel
I1=10020//Btu/lbm fuel
P=20140//Btu/lbm fuel
P1=283899//Btu/lb mole fuel
P2=10120//Btu/lbm fuel
T=285283 //Btu/lb mole fuel
q=569182//btu/lb mole fuel 
//CALCULATIONS
S=-(Sr-Sp)//Btu/lb mole fuel -R
Fhi=q-T//Btu/lb mole fuel
//RESULTS
printf('The increase in entropy during =% f Btu/lb mole fuel-R',S)
printf('The availability of the product of combustion=% f Btu/lb mole fuel',Fhi)
