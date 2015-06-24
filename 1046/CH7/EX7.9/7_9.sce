// Example7.9
//Consider an enclousure formed by closing one end
//of a cylinder( diameter= D,height=H)by a flat surface 
//and the other end by hemispherical dome.
//Determine the view factor of all the surfaces of the enclousure
//if height is twice the diameter.
//1,2,3,4 are given surface of enclosure in fig. 7.21

//Variable declaration
s=3         //no. of surface
tvf=s^2    //total view factor
//using the result of example 7.8
F11=0 
F33= 0.5
printf("view factor F11 =%f",F11)
printf("view factor F33 =%f",F33)

//Calculation & Results
R1=0.25     //R=d/2*h &h=2d
R2=0.25
X=1+((1+R2^2)/(R1^2))
F14=(0.5)*(X-sqrt((X^2)-4*(R2/R1)^2))
printf("view factor F14 =%f",F14)
F13=F14
printf("view factor F13 =%f",F13)
F12=1-F11-F13  // from eq. 7.31 for surface 1
printf("view factor F12 =%f",F12)

d=1  //say
A1=(%pi*(d^2))/4
A3=(%pi*(d^2))/2
F31=A1*F13/(A3)
printf("view factor F31 =%f",F31)

// from eq. 7.31 for surface 3
F33=0.5
F32=1-F31-F33
printf("view factor F32 =%f",F32)

//for surface 2
A2=2*%pi*d^2
F21=A1*F12/A2
printf("view factor F21 =%f",F21)
F23=A3*F32/A2
printf("view factor F23 =%f",F23)
F22=1-F21-F23
printf("view factor F22 =%f",F22)
