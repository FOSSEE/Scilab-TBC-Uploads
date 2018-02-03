clear
//
//

//Initilization of Variables

L=2000 //mm //Length of square column
E=12*10**3 //N/mm**2 //Modulus of Elasticity
sigma=12 //N/mm*2 //stress
W1=95*10**3 //N //Load1
W2=200*10**3 //N //Load2
FOS=3

//Calculations

//From Euler's Formula
//P=%pi**2*E*I*(L**2)**-1  .........(1)

//Working Load
//W=P*(FOS)**-1

//Part-1

//At W1=95*10**3 //N
//W1=P*(3*L**2)**-1

//Let 'a' be the side of the square
//I=1*12**-1*a**4

//sub value of I in Equation 1 and further rearranging we get
a=(W1*3*12*L**2*(%pi**2*E)**-1)**0.25 //mm

//From Consideration of direct crushing
//sigma*a**2=W1
//After Reaaranging the above equation we get
a2=(W1*(sigma)**-1)**0.5 //mm

//required size is 103.67*103.67 i.e a*a

//Part-2

//At W2=200*10**3 //N
//W2=P*(3*L**2)**-1
//After substituting values and further Rearranging the above equation we get
a3=(W2*3*12*L**2*(%pi**2*E)**-1)**0.25 //mm

//From consideration of direct compression,size required is
a4=(W2*sigma**-1)**0.5

//required size is 129.10*129.10 i.e a4*a4

//Result
printf("\n For W1 Load Required size is %0.2f  mm**2",a*a)
printf("\n For W2 Load Required size is %0.2f  mm**2",a4*a4)
