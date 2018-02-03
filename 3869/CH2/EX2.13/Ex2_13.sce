clear
//
//
//

//Variable declaration
b=0.8                  //distance(mm)
a=0.16                 //slit width(mm)
p1=1
p2=2
p3=3

//Calculation
nbyp=(a+b)/a           //ratio of missing orders
n1=int(nbyp*p1)
n2=int(nbyp*p2)
n3=int(nbyp*p3)        //missing orders

//Result
printf("\n the orders %0.3f %0.3f %0.3f  etc will be missing",n1,n2,n3)
