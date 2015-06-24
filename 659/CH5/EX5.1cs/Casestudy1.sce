//                Case Study:-Chapter 5, Page No:139
//                 1.Range of numbers

sum1=0;
count=0;
f=0;value=1;
printf("Enter numbers[press enter after each number]:\n input a NEGATIVE number to end\n");
while(value)
    [value]=scanf("%f");  //Read data
    if(value<0) then
        break;
    end
    count=count+1;
    //Calculating height and lowest value
    if(count==1) then
        high=value;
        low=value;
     elseif(value>high) then
         high=value;
     elseif(value<low) then
         low=value;
     end
     //Calculate sum
     sum1=sum1+value; 
end
average=sum1/count;     //Average cost
range1=high-low;        //Range of values
//Print the results
printf("Total values: %d\n",count);
printf("Highest-values: %f\nLowest-value: %f\n",high,low);
printf("Range: %f\n Avarage: %f\n",range1,average);
