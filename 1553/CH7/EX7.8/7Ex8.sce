////Chapter 7 Ex 8
clc;
close;

//Let first number be x, thus other numbers will be x+2,x+4,x+6 (since consecutive even); and the equation will be (sum/4)=27

//sum=x+(x+2)+(x+4)+(x+6);
//avg=27; //given
//avg=sum/4;
// given polynomial is x+(x+2)+(x+4)+(x+6)=108

mycoeff=[-96 4];
p=poly(mycoeff,"x","coeff");
r=roots(p)+6;
printf("The largest number is: %d",r)
