//Find ICQ; IBQ, and VCEQ if (a)  beta 50 and (b) beta ¼ 100.
//Example 5.8 page no 146
clear
clc
Vcc=15              //v
Vee=4               //v 
Vbeq=0.7            //v
b=50//Beta
Re=3*10^3               //kΩ
Rc=7                    //kΩ
Ieq=(Vee-Vbeq)/Re*1000
printf("\n For beta=50")
printf("\n The value of Ieq=%0.3f mA" ,Ieq)
Icq=(b/(b+1))*Ieq
printf("\n The value of Icq=%0.3f mA" ,Icq)
Ibq=Icq/b
printf("\n The value of Ibq=%0.3f mA" ,Ibq)
Vee=5
Re=3//*10^3
Vceq=Vcc+Vee-(Ieq*Re)-(Icq*Rc)
printf("\n The value of Vceq=%0.3f V" ,Vceq)
printf("\n For beta=100")
b=100
printf("\n The value of Ieq=%0.3f mA" ,Ieq)
Icq=(b/(b+1))*Ieq
printf("\n The value of Icq=%0.3f mA" ,Icq)
Ibq=Icq/b
printf("\n The value of Ibq=%0.3f mA" ,Ibq)
Vee=5
Re=3//*10^3
Vceq=Vcc+Vee-(Ieq*Re)-(Icq*Rc)
printf("\n The value of Vceq=%0.3f V" ,Vceq)
