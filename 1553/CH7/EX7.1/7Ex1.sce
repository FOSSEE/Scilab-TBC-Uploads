//Chapter 7 Ex1

clc;
clear;
close;
//let number be x
//given x-36=86-x
//thus polynomial is: 2x-122=0

mycoeff=[-122 2];
p=poly(mycoeff,"x","coeff");
ans=roots(p); 
printf("The number is %d",ans);


//Alternative logic for same problem
for x=1:99
    if((2*x-122)==0)
        printf("\nAlternate Logic: \nThe number is: %d",x);
    break;
end
end
