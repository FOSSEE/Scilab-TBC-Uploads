//Exercise Example 1.2.1
//Calculates Median And Mode Of an  Array
//(A)
function[y]=median1(a)
  p=mtlb_sort(a);
  [j,i]=size(a);
  y=0
  j=modulo(i,2);
  if(j==0)
    y=((a(i/2)+a(i/2+1))/2);
  end
  if(j==1)
    i=i/2;
    i=i-modulo(i,10);
    y=a(i+1);
  end
  disp(y,"median is");
endfunction
//(B)
function[z]=mode1(a)
  p=mtlb_sort(a);
  disp(p)
  q=1;
  r=1;
  i=1;
  [j,i1]=size(a);
  if(i1>1)
    for i=1:i1-1
      if(p(i)~=p(i+1))
      q=[q(:,:) i+1];
      r=[r(:,:) 1];
      else
        [c,d]=size(r);
        r(d)=r(d)+1;
      end
    end
    q1=mtlb_sort(r);
    [j,i1]=size(q1)
    if(q1(i1-1)==q1(i1))
      z=-1;
      disp("Mode does not exist");
      break;
      else
        c=q1(i1);
        k=1;
        while(r(k)~=c)
          k=k+1;
        end
        z=p(q(k));
      end
    end    
    if(i1==1)
      z=a(1);
    end
    disp(z,"mode is");
endfunction
a=[223 12 233322 121]
y=median1(a);
z=mode1(a);   