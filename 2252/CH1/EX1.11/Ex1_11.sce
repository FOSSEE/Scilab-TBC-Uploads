
//by Norton's Theorem
I=2*10//total current produced by current source
r=2*2/(2+2)//resultant resistance of current source
In=20*r/(r+1)//norton current
Rn=1+r//norton resistance
I=In*Rn/(Rn+8)
mprintf("Current through the load resistance of 8 ohm=%f A from A to B", I) 
