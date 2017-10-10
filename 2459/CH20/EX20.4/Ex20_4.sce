//chapter20
//example20.4
//page438

V_NL=500 // V
V_FL=300 // V
I_FL=120 // mA

regulation=((V_NL-V_FL)/V_FL)*100

Rl_min=V_FL/I_FL

printf("voltage regulation = %.3f percent \n",regulation)
printf("minimum load resistance = %.3f kilo ohm \n",Rl_min)
