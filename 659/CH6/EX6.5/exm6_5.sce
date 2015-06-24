//               Example 6.5
//Program illustrate use of the break statement

disp("This program computes the avarage of set of numbers");
disp("Enter values and enter a NEGATIVE value at the end");
sum1=0;
for m=1:1000
    x=scanf("%f");    //Read data
    if(x<0) then
        break;       //EXIT FROM LOOP
    end
    sum1=sum1+x;     //Computes sum
end
average=sum1/(m-1);  //Computes Average
//Print the results
printf("Number of values =%d\n",m-1);
printf("sum1=%f\n",sum1);
printf("Avarage =%f\n",average);