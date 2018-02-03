clear
//

//variable declaration

Y=(250)                 //Yield stress, N/mm^2
FOS=(1.75)              //Factor of safety
P=(160)                 //Load,KN

p=Y/FOS

printf("\n Therefore, permissible stress")

printf("\n p= %0.3f N/mm^2 ",p)
printf("\n Load P= %0.3f  N",P*1000)

//p=P/A

A=P*1000/p           //area,mm^2

printf("\n A= %0.0f  mm^2",A)

//For hollow section of outer diameter ‘D’ and inner diameter ‘d’ A=%pi*(D^2-d^2)/4
D=(101.6)        //outer diameter,mm

d=sqrt((D**2)-(4*A/%pi))

printf("\n d= %0.2f  mm",d)

t=(D-d)/2
printf("\n t= %0.2f  mm",t)

printf("\n Hence, use of light section is recommended.")

