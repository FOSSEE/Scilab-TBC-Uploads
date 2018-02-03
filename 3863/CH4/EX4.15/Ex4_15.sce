clear
//

//Given
//Variable declaration
L=1.82*1000      //Length of rod in mm
h1=30            //Height through which load falls in mm
h2=47.5          //Fallen height in mm
sigma=157        //Maximum stress induced in N/sq.mm
E=2.1e5          //Youngs modulus in N/sq.mm

//Calculation
U=sigma**2/(2*E)      //Strain energy stored in the rod in N-m
delL=sigma*L/E        //Extension of the rod in mm
Tot_dist=h1+delL      //Total distance in mm

//case(i):Stress induced in the rod if the load is applied gradually
sigma1=((U/Tot_dist)*L)


//case(ii):Maximum stress if the load had fallen from a height of 47.5 mm
sigma2=((sigma1)*(1+(sqrt(1+((2*E*h2)/(sigma1*L))))))


//Result
printf("\n Stress induced in the rod = %.1f N/mm^2",sigma1)

printf("\n NOTE:The given answer for stress(2nd case) in the book is wrong.The correct answer is,")
printf("\n Maximum stress if the load has fallen = %.2f N/mm^2",sigma2)

