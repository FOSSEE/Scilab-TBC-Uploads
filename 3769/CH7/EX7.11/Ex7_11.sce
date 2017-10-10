clear
//Given
P=110                      //W
P1=100                     //W
n=5
V=220                      //V
t=2                     //hours
n1=4
P2=1120                   //W
m=1.5                         //per KWh

//Calculation
W=n*P1
W1=V*t
W2=n1*P
W3=W+W1+W2+P2
E=(W3*t)*10**-3
E2=E*30
B=m*E2

//Result
printf("\n Electricity bill for the month of september is %0.3f  Rs", B)
