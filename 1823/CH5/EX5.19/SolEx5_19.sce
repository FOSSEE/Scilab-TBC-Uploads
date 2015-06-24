//Determine a first-order approximation for the change in ICQ1
//Example 5.19 page no 152
clear
clc
B=75//beta
Rb=454.5        //kΩ
Icbo=0.2*10^-6
Vbb=1.818
Vbeq=0.7
Re=90
deltaRe=110-90
Sre=((B*Rb*Icbo-B^2*(Vbb-Vbeq+Icbo*Rb))/((Rb+B*Re)^2))*10^4
printf("\n The value of Sre=%0.3f * 10^-4 A/Ohm" ,Sre)
Icq=(Sre*deltaRe)/10
printf("\n The value of Icq=%0.3f * 10^-4 mA" ,Icq)
