function[b]=bsear(a,l,u,n)
  if(l>u)
    b=-1;
  else
    mid=int32((l+u)/2);
    if(n==a(mid))
      b=n;
    else
      if(n>a(mid))
         mid=int32((l+u)/2);
        b=bsear(a,mid+1,u,n);
      else
         mid=int32((l+u)/2);
        b=bsear(a,l,mid-1,n);
      end
    end
  end
endfunction

function[b]=bsearc(a,l,u,n)
  b=bsear(a,l,u,n);
  if(b==-1)
    disp("The element is not there");
  end
  if(b==n)
    disp("The element is there");
  end
endfunction
//Calling Routine:
a=[12 122 3233 12121]//Must be sorted:
b=bsearc(a,1,4,12)
