//find b1 in fig 5.24
clc
//solution
//given
P=80000//N
ft=70//N/mm^2//stress
//b=3*t
//A=b*t
//A=3t*t
//P=ft*A
//t^2=80000/210
t=sqrt(80000/210)//mm
b=3*t//mm
////when the link is shown by dotted line, it will be subjected to direct stress as we;; as bending stress
//A1=b1*t
//fo=P/A
//fo=P/(b1*t)
//fb=M/Z//=P*e/(t*b1^2)
//f=fo+fb//total stress
//f=P/(t*b1)*[(6*e/b1)+1]
//70=(80000/(20*b1))*[4]
b1=16*10^3/70//mm
printf("the thickness is,%f mm\n",t)
printf("the width is,%f mm\n",b)
printf("the new width is,%f mm\n",b1)