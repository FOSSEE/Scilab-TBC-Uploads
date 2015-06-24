//                 Example 3.5
//Output of program shows round-off errors that can occur in computation of floating point numbers

//Sum of n terms of 1/n
count=1;
sum1=0;
n=input("Enter value of n:");
term=1.0/n;
while(count<=n)
    sum1=sum1+term;
    count=count+1;
end
printf("Sum= %f",sum1);