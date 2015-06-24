//Chapter-8,Example8_19,pg 8_63
P=0.4
Rarm=150//resistance in each arm
I=sqrt(P/Rarm)//P=(I^2)*R
//applying KVL to loop ABCEFA
r=1
E=25
R=(-I*Rarm-I*Rarm+E-2*I*r)/(2*I)
printf("series resistance\n")
printf("R=%.4f ohm",R)
