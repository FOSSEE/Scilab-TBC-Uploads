function[]=binsearch(a,n,i)
  l=1;
  h=n;
  while(l<=h)
    mid=int((l+h)/2);
    if(a(mid)==i)
      printf("FOUND %d AT %d",i,mid);
      break;
    else
      if(a(mid)>i)
        h=mid-1;
      else
        l=mid+1;
      end
    end
  end
endfunction
//Calling Routine:
a=[2 22 23 33 121 222 233]//a should be  sorted
disp(a,"Given array");
search(a,7,23)