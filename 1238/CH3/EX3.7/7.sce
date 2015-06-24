//finding peak voltage//
//example 7//
clc
//clears the command window//
clear
//clears//
T=250*10^-12;//time constant//
t=.05*10^-6;
Vo=100;//peak output voltage//
Vi=(Vo*t)/T;//peak voltage of generator//
printf('peak voltage=%f volt',Vi)
//result is displayed//

