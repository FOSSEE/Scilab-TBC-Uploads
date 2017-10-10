//Chapter 7 Ex4
clc;
clear;
close;
//let number be x
//given (x/3)-(184-x)/7=8
//thus polynomial is: 10x=720

mycoeff=[-720 10];
p=poly(mycoeff,"x","coeff");
ans=roots(p); 
printf("The smaller number is: %d",ans);


//Alternative logic for same problem
for x=1:99
    if((10*x-720)==0)
        printf("\n Alternate logic: \n The smaller number is: %d",x);
    break;
end
end
