clear
//
//
//

//Variable declaration
D4=0.4            //diameter of 4th ring(cm)
D12=0.7           //diameter of 12th ring(cm)
p1=16
p2=8      
n=4

//Calculation
x=n*p1/(n*p2)
D20=sqrt((D4**2)+(x*((D12**2)-(D4**2))))      //diameter of 20th dark ring(cm)

//Result
printf("\n diameter of 20th dark ring is %0.3f  cm",D20)
