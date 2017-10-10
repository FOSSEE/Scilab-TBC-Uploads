//Chapter 7 Ex2
clc;
clear;
close;
//let number be x
//given 7x-15=2x+10
//thus polynomial is 5x-25=0

mycoeff=[-25 5];
p=poly(mycoeff,"x","coeff");
ans=roots(p); 
printf("The number is: %d",ans);

//Alternative logic for same problem
for x=1:99
    if((5*x-25)==0)
        printf("\nAlternate logic: \nThe number is: %d",x);
    break;
end
end
