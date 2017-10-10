clear
//Given
p=6*10**-6
E=10**6
a=1

//Calculation,
U1=-p*E*a
U2=(p*E*(cos(60)*180/3.14))*10**-2
U3=U2-U1

//Result
printf("\n Heat released by substance is  %0.0f  J",U3)
