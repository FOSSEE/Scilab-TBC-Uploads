
//Solved Example Ex2.30 page no 65
clear
clc
Vz=8.2      //V
Rl=9        //kΩ
iL=Vz/Rl    //mA
printf("iL = %0.3f A",iL)
iZ=1
Vb=13.2
Rs=((Vb-Vz)/(iZ+iL))
printf("\n Rs = %0.3f ohm",Rs)
Vb=11.7
iZ=((Vb-Vz)/Rs)-iL
printf("\n iZ = %0.3f",iZ)
