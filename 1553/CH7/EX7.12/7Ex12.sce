//Chapter 7 Ex12
clc;
close;
//let ten's digit be x, thus unit's digit is 9-x
//number=10x+9-x=9x+9
//number obtained by reversing digits=10(9-x)+x=90-9x
//polynomial is: 18x-144=0

mycoeff=[-144 18];
p=poly(mycoeff,"x","coeff");
ans=9*roots(p)+9; //since given number as calculated in line 6
printf("The number is: %d",ans);

//Alternative logic for same problem
for x=1:99
    if((18*x-144)==0)
        
        num=(9*x+9);
        printf("\n Alternate logic: \n The number is: %d",num);
    break;
end
end
