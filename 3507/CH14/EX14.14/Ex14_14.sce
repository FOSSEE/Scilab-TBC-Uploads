// chapter14
// example14.14
// page 308

Vcc=15 // V
R1=22 // kilo ohm
R2=3.3 // kilo ohm
R3=5 // kilo ohm
R4=1 // kilo ohm
R5=15 // kilo ohm
R6=2.5 // kilo ohm
R8=1 // kilo ohm
R3=5 // kilo ohm
R7=5 // kilo ohm
Rl=10 // kilo ohm
gain_beta=200
Vbe=0.7 // V

// for second stage
V_R6=Vcc*R6/(R6+R5)
V_R8=V_R6-Vbe
I_E2=V_R8/R8 // emitter current in R8
re_dash2=25d-3/I_E2
Zin_base=gain_beta*re_dash2
Zin=R5*(R6*Zin_base/(R6+Zin_base))/(R5+(R6*Zin_base/(R6+Zin_base)))
R_AC2=R7*Rl/(R7+Rl)
Av2=R_AC2/re_dash2

// for first stage
V_R2=Vcc*R2/(R2+R1)
V_R4=V_R2-Vbe
I_E1=V_R4/R4 // emitter current in R4
re_dash1=25d-3/I_E1
R_AC1=R3*Zin/(R3+Zin)
Av1=R_AC1/re_dash1

Av=Av1*Av2

printf("voltage gain of first stage = %.3f \n",Av1)
printf("voltage gain of second stage = %.3f \n",Av2)
printf("overall voltage gain= %.3f \n",Av)

// the accurate answers are voltage gain of first stage = 52.616, voltage gain of second stage = 192.381, overall voltage gain= 10122.329. In book the answers are 53,191.4 and 10144 
// respectively
