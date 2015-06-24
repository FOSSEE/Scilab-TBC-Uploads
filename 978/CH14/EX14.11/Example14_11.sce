//chapter-14,Example14_11,pg 512

//ADC outputs counts
N11=130

N22=229

N12=220

N21=139

//variable values

v1=4

v2=6.7

//temperatures

theta1=20

theta2=25

//parameters

B2=((N22+N11-N12-N21)/(v2-v1)*(theta2-theta1))//temperature coefficient of resistivity

a2=((N22-N21)/(v2-v1))//zero error sensitivity

B1=(N22-N12)/(theta2-theta1)//temperature coefficient of zero point

a1=N22-(B1*theta2)-(a2*v2)//zero error

printf("zero error\n")

printf("a1=%.2f\n",a1)

printf("zero error sensitivity\n")

printf("a2=%.2f\n",a2)

printf("temperature coefficient of zero point\n")

printf("B1=%.2f\n",B1)

printf("temperature coefficient of resistivity\n")

printf("B2=%.2f",B2)