//chapter1
//example1.11
//page20

R1=4 // ohm
R2=6 // ohm
R3=5 // ohm
R4=8 // ohm
V=40 // V

// load is removed and A and B are shorted
load_source=R1+(R2*R3/(R2+R3)) 
source_current=V/load_source 

norton_current=source_current*(R2/(R2+R3)) // short circuit current in AB

printf("shortcircuit current in AB = %.3f A \n",norton_current)

// load is removed and battery is replaced by a short
norton_resistance=R3+(R1*R2/(R1+R2))
printf("norton resistance= %.3f ohm \n",norton_resistance)

// equivalent circuit is norton current source in parallel with norton resistance
I=norton_current*(norton_resistance/(norton_resistance+R4)) // current through 8 ohm resistance
printf("current through 8ohm resistor = %.3f A",I)
