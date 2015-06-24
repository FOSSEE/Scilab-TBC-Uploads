clc 
clear
//input magnitude of forces
f1=40
f2=50
//calculation
d=50^2+40^2+2*50*40*cosd(50)//finding the diagonal
r=50^2+40^2+2*50*(40)*cosd(130)//reversing the side and finding diagonlprintf("the resultant is %3.3f",d1)
r1=sqrt(r)//resultant sum
d1=sqrt(d)// resultant when smaller force is subtracted from larger
//output
printf("1. the resultant sum is %3.3f N",d1)
printf("\n 2. the resultant when smaller force is subtracted from larger is %3.3f N",r1)
