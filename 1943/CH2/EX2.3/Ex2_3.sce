
clc
clear
//Input data
p1=70//Pressure at which an ideal seam power plant operates in bar
T1=550//Temperature at which an ideal seam power plant operates in degrees C
p2=0.075//Pressure at which an ideal seam power plant operates in bar

//Calculations
TB=285.9//Saturation temperature at 70 bar in degree C
TC=40.3//Saturation temperature at 0.075 bar in degree C
Tr=(TB-TC)/(7+1)//Temperature rise per heater for maximum cycle efficiency in degree C
t1=(TB-Tr)//Temperature at heater 1 in degree C
P1=4.33//Pressure at heater 1 in MPa
t2=(t1-Tr)//Temperature at heater 2 in degree C
P2=2.5318//Pressure at heater 2 in MPa
t3=(t2-Tr)//Temperature at heater 3 in degree C
P3=1.367//Pressure at heater 3 in MPa
t4=(t3-Tr)//Temperature at heater 4 in degree C
P4=0.6714//Pressure at heater 4 in MPa
t5=(t4-Tr)//Temperature at heater 5 in degree C
P5=0.2906//Pressure at heater 5 in MPa
t6=(t5-Tr)//Temperature at heater 6 in degree C
P6=0.108//Pressure at heater 6 in MPa
t7=(t6-Tr)//Temperature at heater 7 in degree C
P7=32.65//Pressure at heater 7 in kPa

//Output
printf('The optimum pressure and temperature at different heaters are: \n Heater 1: t1 = %3.1f degree C and p1 = %3.2f MPa\n Heater 2: t2 = %3.1f degree C and p2 = %3.4f MPa\n Heater 3: t3 = %3.1f degree C and p3 = %3.3f MPa\n Heater 4: t4 = %3.1f degree C and p4 = %3.4f MPa\n Heater 5: t5 = %3.1f degree C and p5 = %3.4f MPa\n Heater 6: t6 = %3.1f degree C and p6 = %3.3f MPa\n Heater 7: t7 = %3.1f  degree C and p7 = %3.2f kPa',t1,P1,t2,P2,t3,P3,t4,P4,t5,P5,t6,P6,t7,P7)
