function[]=search(a,n,ele)
  i=1;
  j=0;
  for i=1:n
    if(a(i)==ele)
      printf("Found %d AT %d\n",ele,i);
      j=1;
    end
  end
  if(j==0)
    disp("%d NOT FOUND",ele);
  end
endfunction
//Calling Routine:
a=[2 33 22 121 23 233 222]
disp(a,"Given array");
search(a,7,23)
