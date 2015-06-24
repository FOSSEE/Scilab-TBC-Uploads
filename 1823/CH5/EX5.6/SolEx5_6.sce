//Find ICQ and VCEQ (a) for bet  50 and (b) for beta  100
//Example 5.6 page no 145
clear
clc
Vee=4               //v
Vbeq=0.7            //v
Rb=25*10^3             //kΩ
b=50//Beta
Re=2*10^3           //kΩ
Icq=((Vee-Vbeq)/((Rb/b)+((b+1)/b)*Re))*1000
printf("\n The value of Icq=%0.3f mA" ,Icq)
Vcc=18          //v
Rc=6            //kΩ
Re=2//*10^3     //kΩ
Vceq=Vcc+Vee-(Rc+((b+1)/b)*Re)*Icq          //v
printf("\n For beta=100")
printf("\n The value of Vceq=%0.3f V" ,Vceq)
printf("\n For beta=100")
b=100
Re=2*10^3
Icq=((Vee-Vbeq)/((Rb/b)+((b+1)/b)*Re))*1000
printf("\n The value of Icq=%0.3f mA" ,Icq)
Re=2//*10^3
Vceq=Vcc+Vee-(Rc+((b+1)/b)*Re)*Icq
printf("\n The value of Vceq=%0.3f V" ,Vceq)
