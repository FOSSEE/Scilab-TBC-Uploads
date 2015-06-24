//chapter1
//example1.5
//page13

E=200 // V
Ri=100 // ohm

Rl=100 // for load=100ohm
I=E/(Ri+Rl)
Pl=I^2*Rl
Pt=I^2*(Rl+Ri)
efficiency=(Pl/Pt)*100
printf("for load=100 ohm, power delivered to load= %.3f W and efficiency=%.3f percentage \n \n",Pl,efficiency)

Rl=300 //for load=300ohm
I=E/(Ri+Rl)
Pl=I^2*Rl
Pt=I^2*(Rl+Ri)
efficiency=(Pl/Pt)*100
printf("for load=300 ohm, power delivered to load= %.3f W and efficiency=%.3f percentage \n \n",Pl,efficiency)

printf("comment: \n ")
printf("if load resistance is equal to internal resistance,maximum power is \n transferred but efficiency is low \n ")
printf("if load resistance is more than internal resistance, power transferred \n is less but efficiency is high")
    
