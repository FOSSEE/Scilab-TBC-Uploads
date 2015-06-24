clc
clear
//INPUT DATA
D=8.92*10^3//density of copper in Kg m^-3
AW=63.5//atomic weight of copper
r=1.73*10^-8//resistivity of copper  in ohm metre
AV=6.023*10^26//avagadro no in mole^-1
e=1.6*10^-19//charge of electron in coulombs
m=9.11*10^-31//mass of a electron in kg

//CALCULATION
n=(AV*D)/AW//density of electrons per unit volume in m^-3
t=(m/(r*n*(e^2)))/10^-14//average time collision of electrons in copper in s *10^-14
mo=(1/(r*n*e))/10^-2//mobility of charge in m^2 V^-1 s^-1 *10^-2

//OUTPUT
printf('The relaxation time collision of electrons in copper obeying classical laws is %3.2f *10^-14 in s \n The mobility charge of copper obeying classical laws is %3.3f *10^-2 in m^2 V^-1 s^-1',t,mo)
