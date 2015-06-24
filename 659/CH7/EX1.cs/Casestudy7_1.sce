//            Case Study: Chapter 7, Page No:210
//             1. Median of list of numbers 

N=10;
disp("Enter the number of items");
n=scanf("%d");
//Reading items into array a
printf("Input %d values[One at a time]\n",n);
for i=1:n
    a(i)=scanf("%f");
end
//Sorting begins
for i=1:n-1
   for j=1:n-i
     if(a(j)<=a(j+1))
         t=a(j);
         a(j)=a(j+1);
         a(j+1)=t;
     else
         continue;
     end
 end
end  //sorting ends
//Calculation of median
if(n/2==0) then
    median1=(a(n/2)+a(n/2+1))/2.0;
else
    median1=a(n/2+1);
end
//Printing
for i=1:n
    printf("%f  ",a(i));
end
printf("\nMedian is %f\n",median1);

