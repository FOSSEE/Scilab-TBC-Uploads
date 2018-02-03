clear
//
//
//

//Variable declaration
D25=0.8       //diameter of 25th ring(cm)
D5=0.3        //diameter of 5th ring(cm)
p=25-5
R=100         //radius of curvature(cm)

//Calculation
Nr=(D25**2)-(D5**2)    //numerator
Dr=4*p*R               //denominator
lamda=Nr/Dr            //wavelength of light used(cm)

//Result
printf("\n wavelength of light used is %0.3f  *10**-5 cm",lamda*10**5)
printf("\n answer given in the book is wrong")
