//Multiplication of 2 numbers
funcprot(0)
function[val]=mul(a,b)
  if(b==1)
    val=a;
  else
    val=a+mul(a,b-1);
  end
endfunction
//Calling Routine:
a=4;
b=3;
val=mul(4,3)
printf("Product of %d and %d is %d",a,b,val);