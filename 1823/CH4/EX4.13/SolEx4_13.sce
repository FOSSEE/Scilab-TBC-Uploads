//Find (a) VGSQ if IDQ ¼ 16mA and (b) IDQ if VGSQ= - 5V.
//Example 4.13 page no 122
Vgsq=-4.5               //V
Idq=-8                   //mA
VT=-3                      //V
Idon=(Idq/(1-Vgsq/VT)^2)
printf("\n Idon=%0.2f mA" ,Idon)
Idq=-16
Vgsq=VT*(1-(Idq/Idon)^(1/2))
printf("\n Vgsq=%0.2f V" ,Vgsq)
Vgsq=-5
