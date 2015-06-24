clc
clear
//Input data
V=22400;//The volume of One gram molecule of a gas at N.T.P in cm^3
p=76;//The pressure in cm of Hg 
T=273;//The temperature in K

//Calculations 
P=p*13.6*981;//The pressure in dynes/cm^2
R=(P*V)/T;//The universal gas constant for one gram molecule of a gas in ergs/mole-K

//Output
printf('The universal gas constant for one gram molecule of a gas is R = %3.4g ergs/mole-K',R)
