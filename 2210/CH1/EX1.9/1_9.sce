//Chapter 1, Example 1.9, Figure 1.25
clc
r1=75                           //network splitter and termination impedance
r2=43                           //matching network

//calculation
Voc=(r1/(r2+r1))*(((r1+r2)/2)/(((43+75)/2)+r1))
Zin=((r1+r2)/2)
Zsr=r2+(((r1+r2)*r1)/((r2+r1)+r1))

printf("(a) Ratio Vout/Voc = %.2f \n\n",Voc)
printf("(b) Input impedance to the network = %d ohm\n\n",Zin)
printf("(c) Reciever source impedance = %.2f ohm\n\n",Zsr)
