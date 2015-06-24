clc
clear
//Input data
n=30//Efficiency of the reactor in percent
Ef=200//Energy released per fission in MeV
E=200//Energy needed to the city in MW
e=1.6*10^-19//Charge of electron in Coulumb
A=6.023*10^23//Avagadros number 
a=235//U235

//Calculations
E1=E*10^6//Energy required to the city in J/s
E2=E1*24*60*60//Energy required to the city for one day in J
I=(E2/n)*100//Useful input in J
Ef2=(Ef*10^6*e)//Energy released per fission in J
n=(I/Ef2)//Number of nucei required to produce 'I' J of energy 
m=((a*n)/(A*1000))//Mass of 'n' atoms of U235 in kg

//Output
printf('The amount of fuel required for one day operation of he reactor is %3.4f kg',m)
