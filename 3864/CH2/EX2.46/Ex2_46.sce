clear
//
//

//Initilization of Variables  

W=100 //N //Load
E=2*10**5 //N/mm**2 //Youngs Modulus 
h=60 //mm //Height through Load falls down
L=400 //mm //Length of collar
d=30 //mm //diameter of bar

//Calculations

A=%pi*4**-1*d**2 //mm**2 //Area of bar

//Instantaneous stress produced is
p=W*A**-1*(1+(1+(2*A*E*h*(W*L)**-1))**0.5)

//Now the EXtension of the bar is neglected in calculating work doneby the Load,then
P=(2*E*h*W*(A*L)**-1)**0.5

//Let percentage error be denoted by E1
//Percentage error in approximating is
E1=(p-P)*p**-1*100

//Instantaneous Extension produced is
dell_l=(P)*E**-1*L


//Result
printf("\n The Instantaneous stress is %0.2f  N/mm",p)
printf("\n Percentage Error is %0.2f  ",E1)
printf("\n The Instantaneous extension is %0.2f  mm",dell_l)
