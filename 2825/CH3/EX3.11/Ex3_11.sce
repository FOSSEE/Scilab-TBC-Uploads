//Ex3_11 Pg-186
clc

Vmin=0.7 //minimum voltage across diode in V
V=5 //supply voltage in V
V_R1=V-Vmin //voltage across resistor R in V
Imin=10^(-3) //minimum current
R1=V_R1/Imin 

printf("Maximum value of R =%.1f kohm \n ",R1*1e-3)

I=5*10^(-3) //current through resistance in A
V_R2=V-Vmin //voltage across resistor R in V
R2=V_R2/I
printf("\n\n Minimum value of R =%.0f ohm ",R2)

Vb=6 //supply voltage
Vb_res=Vb-Vmin //voltage across resistor
P=I*Vb_res //power dissipated across resistor
printf("\n\n Power dissipated across R =%.1f W",P*10^3)

P_diode=I*Vmin //power dissipated across diode
printf("\n power dissipated across diode =%.1f mW",P_diode*1e3)
R=10^3 //resistor in ohm
V_R=R*Imin //voltage drop across resistor R in V
Vb=V_R+Vmin 
printf("\n\n The minimum voltage across diode = %.1f V",Vb)
