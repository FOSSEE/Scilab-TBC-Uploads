function[]=sortedsearch(a,n,ele)
  if(a(1)&gt;ele|a(n)<ele) disp("not="" in="" the="" list");="" else="" i="1;" j="0;" for="" if(a(i)="=ele)" printf("found="" %d="" at="" %d",ele,i);="">ele)
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
</ele)>