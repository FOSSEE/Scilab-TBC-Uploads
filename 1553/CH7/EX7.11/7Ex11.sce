//Chapter 7 Ex11

clc;
close;

//let tens's digit be x and unit's be x+3
//given number=10x+(x+3)=11x+3
//ratio is (11x+3)/(2x+3)=4/1
//polynomial is: 3x-9=0

 mycoeff=[-9 3];
p=poly(mycoeff,"x","coeff");
ans=11*roots(p)+3; //since given number as calculated in line 7
printf("The number is: %d",ans);
