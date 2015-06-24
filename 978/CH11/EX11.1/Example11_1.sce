//chapter-11,Example11_1,pg 343

R1=1*10^3//input resistance

R2=1*10^3//feedback resistor

R3=1*10^3// non inverting ter. resistor

R8=1*10^3//potentiometer

R4=1*10^3

DF1=(R1/((2*R1)+R8))//duty factor lim.-1

DF2=(R1+R4)/((2*R1)+R8)//duty factor lim.-2

//T=(((2*R4*C*((2*R1)+R8)))/R1)*(Vt/Vi)=((6*R4*C*Vt)/Vi)

printf("range of duty factor is DF1 to DF2 i.e\n")

printf("%.2f  to  ",DF1)

printf("%.2f",DF2)

printf("\nlimits of t1 and t2\n")

printf("(T/3)  to  (2T/3)")