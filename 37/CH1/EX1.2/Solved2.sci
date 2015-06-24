//Solved Example 2
//:String Manipulations
funcprot(0)
function[l]=strlen(str)
  i=1;
  l=0;
  [j,k]=size(str)
  for  i=1:k
    l=l+length(str(i));
  end
  disp(l,"string length is");
endfunction
//Calling Routine:
str="Hello World";
l=strlen(str)
function[c]=strcat1(a,b)
  disp(strcat([a b]),"After concatination");
  c=strcat([a b]);
endfunction
//Calling Routine:
a="hello ";
b="world";
c=strcat1(a,b);