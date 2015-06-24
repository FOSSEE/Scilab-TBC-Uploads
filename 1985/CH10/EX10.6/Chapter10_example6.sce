clc
clear
//Input data
mH=2.01478//Mass of Hydrogen (1H2) in a.m.u
mHe=4.00388//Mass of Helium (He4) in a.m.u
n=20//Efficiency in percent
O=10000//Output of the reactor in kW
e=1.6*10^-19//Charge of electron in Coulumb
A=6.023*10^23//Avagadros number 

//Calculations
md=(2*mH-mHe)//Mass defect in a.m.u
E=(md*931.48)//Energy released in MeV
O1=(O*1000)//Output of the reactor in J/s
E1=(O1*24*60*60)//Energy released by the reactor in one day in J
I=(E1/n)*100//Useful input in J
N=(I*2/(E*10^6*e))//Number of deuterons required to release an energy of 'I' J
m=((2*N)/A)//Mass of 'N' atoms of 1H2 in gm

//Output
printf('The reactor consumes %3.3f*10^-3 kg of deuteron in one day',m)

