function[k]=fact(a)
k=-1;
if(a<0|a>200)
disp("Invalid");
break;
 else
if(a==1|a==0)
k=1;
 else
k=a*fact(a-1);
end
end
endfunction
a=4;
p=fact(a);
disp(p,'the value of 4! is')