//Chapter 2, Exmaple 6, page 66
clc
clear
//calculation based on figure 2.32

//(a)Charge on each bundle
printf("Part a\n")
req = sqrt(0.0175*0.45)
printf("Equivalent radius = %e m \n", req)
V = 400*10**3 //Voltage
H = 12 //bundle height in m
d = 9 //pole to pole spacing in m
e0 = 8.85418*10**-12 //Epselon nought
Hd = sqrt((2*H)^2+d^2)//2*H^2 + d^2
Q = V*2*%pi*e0/(log((2*H/req))-log((Hd/d)))
q = Q/2
printf("Charge per bundle = %e uC/m \n",Q) //micro C/m
printf("Charge per sunconducter = %e uC/m \n",q) //micro C/m

//(b part i)Maximim & average surface feild
printf("\nPart b")
printf("\nSub part 1\n")
r = 0.0175 //subconductor radius
R = 0.45 //conductor to subconductor spacing
MF = (q/(2*%pi*e0))*((1/r)+(1/R)) // maximum feild
printf("Maximum feild = %e kV/m \n",MF)
MSF = (q/(2*%pi*e0))*((1/r)-(1/R)) // maximum surface feild
printf("Maximum feild = %e kV/m \n",MSF)
ASF = (q/(2*%pi*e0))*(1/r) // Average surface feild
printf("Maximum feild = %e kV/m \n",ASF)

//(b part ii) Considering the two sunconductors on the left
printf("\nSub part 2\n")
//field at the outer point of subconductor #1 
drO1 = 1/(d+r)
dRrO1 = 1/(d+R+r)
EO1 =  MF -((q/(2*%pi*e0))*(drO1+dRrO1))
printf("EO1 = %e kV/m \n",EO1)
//field at the outer point of subconductor #2 
drO2 = 1/(d-r)
dRrO2 = 1/(d-R-r)
EO2 =  MF -((q/(2*%pi*e0))*(dRrO2+drO2))
printf("EO2 = %e kV/m \n",EO2)

//field at the inner point of subconductor #1 
drI1 = 1/(d-r)
dRrI1 = 1/(d+R-r)
EI1 =  MSF -((q/(2*%pi*e0))*(drI1+dRrI1))
printf("EI1 = %e kV/m \n",EI1)
//field at the inner point of subconductor #2 
drI2 = 1/(d+r)
dRrI2 = 1/(d-R+r)
EI2 =  MSF -((q/(2*%pi*e0))*(dRrI2+drI2)) 
printf("EI2 = %e kV/m \n",EI2)

//(part c)Average of the maximim gradient
printf("\nPart c\n")
Eavg = (EO1+EO2)/2
printf("The average of the maximum gradient = %e kV/m \n",Eavg)


//Answers might vary due to round off error
