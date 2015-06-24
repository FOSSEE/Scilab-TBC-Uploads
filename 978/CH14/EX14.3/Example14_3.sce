//chapter-14,Example14_3,pg 428

//pt100 RTD

R4=10*10^3

R2=R4-0.09*R4

Ro=-2.2*10^3//output resistance

R1=(Ro*((R2^2)-(R4^2)))/(R2*(R2+R4))//design resistor

printf("resistance R1 and R3\n")

printf("R1=R3=%.2f ohm",R1)