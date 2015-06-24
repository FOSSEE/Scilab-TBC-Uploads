//             Example 9.5 
//Write a program to calculate standard deviation of an array values.
//Array elements are read from terminal.Use functions to calulate- 
//standard deviation and mean 
funcprot(0);
//passing array named 'value' to function std_dev at 'a'
function[std]=std_dev(a,n)
    sum1=0;
    x=mean1(a,n);                      //calling mean1() function
    for i=1:n
      sum1=sum1+(x-a(i))^2;
      std=sqrt(sum1/double(n));        //computes standard deviation
    end
endfunction
function[x]=mean1(a,n)
    sum1=0;
    for i=1:n
      sum1=sum1+a(i);
      x=sum1/double(n);                 //x contain mean value
    end
endfunction
SIZE=int8(5);                           //size of array
printf("Enter %d float values",SIZE); 
for i=1:SIZE
    value(i)=input(" ");                 //entering values in the array
end
printf("Std.deviation is %f",std_dev(value,SIZE)); //calling std_dev() function