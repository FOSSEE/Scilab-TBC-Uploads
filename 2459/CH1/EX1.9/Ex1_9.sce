//chapter1
//exzmple1.8
//page16

R1=1 // kilo ohm
R2=1 // kilo ohm
R3=1 // kilo ohm
V=20 // V

E0=(R3/(R1+R2))*V // thevenin voltage = voltage across R3 since A and B are open circuited which means no drop across R2
R0=R2+(R1*R3/(R1+R3)) // thevenin resistance = resistance between A and B with no load and voltage source shorted
 
printf("thevenin voltage = %.2f V \nthevenin resistance = %.2f kilo ohm",E0,R0)
