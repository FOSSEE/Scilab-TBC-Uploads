clc
//Chapter3: Modulation
//Example3.3
//Given
M1=0.2//depth of modulation for first tone
M2=0.4//depth of modulation for second tone
Pc=1200//Tx Power
Pmod=Pc*(1+M1^2/2+M2^2/2)//total power radiated after modulation by both the tones
mprintf('The total power radiated is %d watts',Pmod)
