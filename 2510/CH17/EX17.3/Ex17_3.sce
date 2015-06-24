//Variable declaration:
rf = 6.0/12.0               //Outside radius of fin (ft)
ro = 4.0/12.0               //Outside radius of %pipe (ft)
t = 0.1/12.0                //Thickness of fin (ft)

//Calculation:
Af = 2*%pi*(rf**2-ro**2)     //Face area of fin (ft^2)
At = Af + 2*%pi*rf*t         //Total area of fin (ft^2)

//Result:
printf("The total fin area is : %.3f ft^2 .",At)
