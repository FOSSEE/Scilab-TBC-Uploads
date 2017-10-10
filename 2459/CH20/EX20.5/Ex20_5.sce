//chapter20
//example20.5
//page441

Vin=24 // V
Vout=12 // V
Rs=160 // ohm
Rl_min=200 // ohm

Is=(Vin-Vout)/Rs  // in ampere

// minimum load occurs when Rl tends to infinity so
Il_min=0

// maximum load occurs when Rl=200 ohm
Il_max=Vout/Rl_min  // in ampere

Iz_min=Is-Il_max  // in ampere 
Iz_max=Is-Il_min  // in ampere

printf("current through series reistance = %.3f mA \n \n",Is*1000)
printf("minimum load current = %.3f mA \n",Il_min*1000)
printf("maximum load current = %.3f mA \n",Il_max*1000)
printf("minimum zener current = %.3f mA \n",Iz_min*1000)
printf("maximum zener current = %.3f mA \n \n",Iz_max*1000)

printf("comment : current Is through Rs is constant.\nAs load current increases from 0 to 60 mA, zener current decreases from 75 to 15 mA, \nmaintaining Is constant.\nThis is the normal operation of zener regulator \ni.e.Is and Vout remain constant inspite of changes in load or source voltage.")
