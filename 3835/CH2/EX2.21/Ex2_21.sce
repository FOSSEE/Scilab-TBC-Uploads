clear
//
//the following problem is based on usage of superposition theorem
i8=12/(6+4+8) //current for 8 ohm resistor.the resistances are in series with each other.Hence 6+4+8
//next when voltage source is short circuited (8+4) total of resistance is obtained.The 4A is distributed in parallel branches as per current divider rule
i=(4*6)/(6+12)
printf("\n i8= %0.1f  A",i8)
printf("\n i8= %0.1f  A",i)
tot=i8+i
printf("\n total current= %0.1f  A",tot)


