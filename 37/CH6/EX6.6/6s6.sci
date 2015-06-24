function[a1]=mergesort(a,p,r)
  if(p<r)
    q=int((p+r)/2);
    a=mergesort(a,p,q);
    a=mergesort(a,q+1,r);
    a=merge(a,p,q,r);
  else
    a1=a;
    return;
  end
  a1=a;
endfunction
function[a1]=merge(a,p,q,r)
  n1=q-p+1;
  n2=r-q;
  left=zeros(n1+1);
  right=zeros(n2+1);
  for i=1:n1
    left(i)=a(p+i-1);
  end
  for i1=1:n2
      right(i1)=a(q+i1);
  end
  left(n1+1)=999999999;
  right(n2+1)=999999999;
  i=1;
  j=1;
  k=p;
  for  k=p:r
    if(left(i)<=right(j))
      a(k)=left(i);
      i=i+1;
    else
      a(k)=right(j);
      j=j+1;
    end
  end
  a1=a;
endfunction
//Calling Routine:
a=[23 21 232 121 26324 1222433 14212]
disp(a,"Given Array");
a1=mergesort(a,1,7)
disp(a1,"Sorted array is:");
a=[232 11212 3443 23221 123424 32334 12212 2443 232]
disp(a,"Given Array");
a1=mergesort(a,1,9);
disp(a1,"Sorted Array");