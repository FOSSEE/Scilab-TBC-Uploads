//             Example 9.6 
//Write a program that uses a function to sort an array of integers.
funcprot(0);
function[x]=sort(m,x)          //Passing an array i.e. marks to function sort()
    for i=1:m                  // i repesents number of passes
        for j=2:m-i+1          // j represents number of comperision in each pass
            if(x(j-1)>=x(j)) then
                t=x(j-1);
                x(j-1)=x(j);
                x(j)=t;
            end
        end
    end
endfunction
marks=int16([40,90,73,81,35]);  //creating an array named marks of 5 integers
disp("Marks before sorting");
disp(marks);
x=sort(5,marks);                //calling sort() function
disp("Marks after sorting");
disp(x);