function[fib]=fibbo(n)
  fib=-1;
  if(n<0)
    disp("Invalid Entry");
  else
   if(n<=1)
     fib=n;
   else
     fib=fibbo(n-1)+fibbo(n-2);
   end
 end
endfunction

function[l]=fibbon(n)
  x=0;
  l=(fibbo(0));
  for x=1:n-1
   l=[l(:,:),fibbo(x)];
  end
 disp(l);
endfunction
//Calling Routine:
n=5;
l=fibbon(n)