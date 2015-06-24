//Variable declaration:
w1 = 1.5                    //Thicknessof fin (in)
L = 12.0                    //Length of fin (in)
w2 = 0.1                    //Thickness of fin(in)

//Calculation:
Af = 2*w1*L                  //Face area of fin (in^2)
At = Af + L*w2               //Total area of fin (in^2)

//Result:
printf("The face area of the fin is : %.0f in^2 ",Af)
printf("The face area of the fin is : %.2f ft^2 .",Af/12**2)
printf("The total area of the fin is : %.1f in^2 .",At)
printf("The total area of the fin is : %.3f ft^2 .",At/12**2)
