clear;
clc;
disp("Unsolved example 3");
function[l]=strlen(x)
  i=1;
  l=0;
  [j,k]=size(x)
  for  i=1:k
    l=l+length(x(i));
  end
endfunction
function[]=str(st)
  stack=struct('a',0,'top',0);
  st=string(st);
  l=1;
  l1=strlen(st);
  symb=st(l);
  valid=1;
  while(l<l1)
    while(symb~='C')
      if(stack.top==0)
          stack.a=st(l);
          stack.top=stack.top+1;
       else
          stack.a=[stack.a(:,:) st(l)];
          stack.top=stack.top+1;
       end
       l=l+1;
       symb=st(l);
     end
     i=st(l+1);
    if(stack.top==0)
        valid=0;
        break;
     else
       symb1=stack.a(stack.top);
       stack.top=stack.top-1;
       if(i~=symb1)
         valid=0;
         break;
       end
     end
    l=l+1;
  end
    if(stack.top~=0)
      valid=0;
    end
    if(valid==0)
      disp("Not of the given format");
    else
      disp("String Of the Given Format");
    end
endfunction
//Calling Routine:
st=['A' 'A' 'B' 'A' 'C' 'A' 'B' 'A' 'A']
str(st)  
st=['A' 'A' 'B' 'A' 'C' 'A' 'B' 'A' ]
str(st)