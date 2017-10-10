//chapter9
//example9.20
//page170

R=5 // kilo ohm
Rl=10 // kilo ohm
Ei=120 // V
Vz=50 // V

V=Ei*Rl/(R+Rl) // voltage across open circuit if zener diode is removed
Vo=Vz // output voltage
V_R=Ei-Vz // drop across R
Il=Vz/Rl // load current 
I=V_R/R // current through R

// by Kirchoff first law I=Iz+Il
Iz=I-Il

printf("output voltage = %.3f V \n",Vo)
printf("voltage drop across series resistance = %.3f V \n",V_R)
printf("current through Zener diode = %.3f mA \n",Iz)
