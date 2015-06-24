//chapter22
//example22.6
//page493

// for V_GS = 0V constant
V_DS1=7 // V
V_DS2=15 // V
I_D1=10 // mA
I_D2=10.25 // mA

rd=(V_DS2-V_DS1)/(I_D2-I_D1)

// for V_DS = 15V constant
V_GS1=0
V_GS2=0.2
I_D1=9.65
I_D2=10.25

g_fs=(I_D2-I_D1)/(V_GS2-V_GS1)

mu=rd*g_fs

printf("ac drain resistance = %.3f ohm or %.3f kilo ohm \n",rd/1000,rd)
printf("transconductance = %.3f mho or %.3f micro mho \n",g_fs,g_fs*1000)
printf("amplification factor = %.3f \n",mu)
