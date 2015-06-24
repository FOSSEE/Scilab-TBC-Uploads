//chapter-8,Example8_5,pg 499

//when switch is open

C1=0.011*10^-6//capacitance-1

Q1=10//Q-factor-1

//when switch is closed

C2=0.022*10^-6//capacitance-2

Q2=100//Q-factor-2

Qac=((Q1*Q2)/(Q1-Q2))*((C1-C2)/C1)//actual Q-factor

Rp=((Q1*Q2)/(Q2-Q1))*(1/(2*%pi*C2))//parallel resistance

printf("actual Q-factor\n")

printf("Qac=%.2f \n",Qac)

printf("parallel resistance \n")

printf("Rp=%.2f ohm",Rp)