clear;
clc;
function[]=sortedsearch(a,n,ele)
  if(a(1)>ele|a(n)<ele)
    disp("NOT IN THE LIST");
  else
    i=1;
    j=0;
    for i=1:n
      if(a(i)==ele)
        printf("FOUND %d AT %d",ele,i);
        j=1;
      else
        if(a(i)>ele)
          break;
        end
      end
    end
    if(j==0)
      disp("%d NOT FOUND",ele);
    end
  end
endfunction
//Calling Routine:
a=[2 22 23 33 121 222 233]//a should be  sorted
disp(a,"Given array");
sortedsearch(a,7,23)
