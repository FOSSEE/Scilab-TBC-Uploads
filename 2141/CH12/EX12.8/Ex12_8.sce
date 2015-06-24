
clc
//initialisation of variables
hf=-104036 //Btu/lb mole
Cp0=4260//Btu/lb mole
h1=4345//Btu/lb mole
h3=3661 //Btu/lb mole
P=500//lbf/in^2
T=600//F
Pr=P/3206//lbf/in^2
Tr=1060/1165//F
Tc=0.53//F
//CALCULATIONS
h=hf+Cp0//Btu/lb mole
h2=hf+h1//Btu/lb mole
h4=hf+h3//Btu/lb mole
h5=Tc*1165//Btu/lb mole
H=hf-h5+Cp0//Btu/lb mole
//RESULTS
printf('The ideal gas with value of =% f Btu/lb mole',h)
printf('The steam to be an ideal gas =% f btu/lb mole',h2)
printf('the steam tables=% f Btu/lb mole',h4)
printf('the specific heat equations =% f Btu/lb mole',H)
