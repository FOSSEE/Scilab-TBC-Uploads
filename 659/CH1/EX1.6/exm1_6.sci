//            Example 1.6
// SAMPLE PROGRAM 4: USE OF SUBROUTINES

//Program using function
 
function []=mul(a,b)   // mul()function starts (i.e.definition starts)
   y=a*b;
   printf("Multiplication of %d and %d is %d",a,b,y);
endfunction       // mul()function ends 
a=5;b=10;
//Calling mul() function
mul(a,b) 
