//Variable Declaration
l = []

//Calculation
    
lamda = (0.2)*3
l(1) = (((%e^-lamda)*(lamda^1))/factorial(1))

lamda = (0.2)*5
val = ((%e^-lamda)*(lamda^0))/factorial(0) + ((%e^-lamda)*(lamda^1))/factorial(1)
l(2) = (1 - val)

lamda = (0.2)*15
l(3) = (((%e^-lamda)*(lamda^0))/factorial(0) + ((%e^-lamda)*(lamda^1))/factorial(1))

//Results
printf ( "Part(a): %.3f",l(1))
printf ( "Part(b): %.3f",l(2))
printf ( "Part(c): %.3f",l(3))
