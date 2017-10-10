
clc
//solution
//given
P=35*10^3//N
ft=20//N/mm^2
t=15//N/mm^2
fc=50//N/mm^2
//let x be side of square rod
//P=x^2*ft//N
//x=sqrt(P/ft)//mm
printf("the side of square is,%f mm\n",sqrt(P/ft))
printf("the side of square is,say x=42mm\n")
//B1=x=42mm
x=42//mm
B1=42//mm//width of strap
//let t1 be thickness
//t1=B1/4//mm
printf("the width of strap is ,%f mm\n",B1)
printf("the thickness of cottar is,%f mm\n",B1/4)
printf("the thickness of cottar is,say 12mm\n")
t1=12//mm
//let B be width of gib and cotter
//P=2*B*t*t1=360*B
//B=P/360//mm
printf("the width of gib and cotter is,%f mm ",P/360)
printf("The width of gib and cotter is ,say100mm\n")
B=100//mm
b1=0.55*B//mm//width of gib
b=0.45*B//mm//width of cotter
printf("the width of cotter and gib is,%f mm\n,%f mm\n respctively",b,b1) 
//let t2 be thickness of strap
//P=2*((x*t2)-(t2*t1))*ft=1200*t2
//t2=P/1200//mm
printf("the thickness of strap is,%f mm\n",P/1200)
printf("the thickness of strap is,Say 30mm\n")
t2=30//mm
//P=2*t2*t*fc1=720*fc1
fc1=P/720//N/mm^2
printf("the induced crushing stress is,%f N/mm^2\n ",fc1)
printf("since induced stress is less then  safe limits\n")
//let l1 be length of rod
//P=2*l1*x*t
l1=P/(2*x*t)//mm
printf("the value of be length of rod is,%f mm\n",l1)
//let l2 be length of rod in double shear
//P=2*2*l2*t2*t=1800*l2
l2=P/1800//mm
printf("the length of rod in double shear is,%f mm\n",l2)

