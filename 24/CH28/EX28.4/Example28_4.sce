//Given that
rows = 140
n = 5000
E = 0.15  //in Volts
r = 0.25  //in Ohm
Rw = 800  //in Ohm

//Sample Problem 28-4a
printf("**Sample Problem 28-4a**\n")
Rrow = n*r
Req = Rrow/rows
Erow = n*E
Eeq = (Erow/Rrow * rows)/(rows/Rrow)
I = Eeq/(Rw + Req)
printf("The magnitude of current produced in the water is %fA\n", i(1))

//Sample Problem 28-4b
printf("\n**Sample Problem 28-4b**\n")
Irow = I/rows
printf("Current in each row is equal to %fA", Irow)