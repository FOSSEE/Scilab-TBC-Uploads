//Given that
C = 1 //(say)
R = 1  //(say)

//Sample Problem 28-5a
printf("**Sample Problem 28-5a**\n")
//q = qo*e^(-t/(R*C))
//q = qo/2 when t = Tq
Tq = log(2)*R*C
printf("At t=%fT, the capacitor will be half charged\n", Tq)

//Sample Problem 28-5b
printf("\n**Sample Problem 28-5b**\n")
//U = Uo*e^(-2*t(R*C))
//U = Uo/2 When t = Tu
Tu = log(2)/2*R*C
printf("At t=%fT, the enrgy stored will be half of its MAX value", Tu)