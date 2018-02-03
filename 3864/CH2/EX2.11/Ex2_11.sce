clear
//
//

//Initilization of Variables

t=10 //mm //Thickness of steel
b1=60 //mm //width of plate1
b2=40 //mm //width of plate2
P=60*10**3 //Load
L=600 //mm //Length of plate
E=2*10**5 //N/mm**2
    
//Calculations

//Extension of taperong bar of rectangular section
dell_l=P*L*(t*E*(b1-b2))**-1*log(b1*b2**-1)

A_av=(b1*t+b2*t)*2**-1 //Average Area //mm**2
dell_l2=P*L*(A_av*E)**-1 

//PErcentage Error
e=(dell_l-dell_l2)*(dell_l)**-1*100

//Result
printf("\n The Percentage Error is %0.2f  ",e)
