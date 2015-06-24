//Function To Caluculate factorial of a given  number
function[value]=fact(a)
  value=-1;
  if(a<0|a>170)
    disp("Invalid valu.");
    break;
  else
    if(a==1|a==0)
      value=1;
    else
      value=a*fact(a-1);
    end
  end
endfunction
//Calling Routine:
a=5;
val=fact(a);
printf("%d factorial is %d",a,val);