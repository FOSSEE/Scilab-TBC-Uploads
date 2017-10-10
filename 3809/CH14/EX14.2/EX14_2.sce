//Chapter 14, Example 14.2
clc
//Initialisation
A1=100000                 //gain of an amplifier A
B=0.0001                 //gain of an amplifier B
A2=200000                 //gain of an amplifier A

//Calculation
G1=A1/(1+(A1*B))            //overall gain
G2=A2/(1+(A2*B))            //overall gain


//Results
printf("if gain of the amplifier A = 100,000\n")
printf("G = %d\n\n",G1)
printf("if gain of the amplifier A = 200,000\n")
printf("G = %d",G2)


