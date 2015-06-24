//Solved Example 5:
//Writing a name from the given structure and 
//counting the number of alphabets printed
function[l]=strlen(str)
  i=1;
  l=0;
  [j,k]=size(str)
  for  i=1:k
    l=l+length(str(i));
  end
endfunction
function[count]=writename(name)
  printf("\n");
  printf("%s",name.first);
  printf("%c",'  ');
  printf("%s",name.midinit);
  printf("\t");
  printf("%s",name.last);
  printf("\n");
  
  a=string(name.first);
  count=strlen(a);
  a=string(name.midinit);
  count=count+strlen(a);
  a=string(name.last);
  count=count+strlen(a);
  disp(count,"Count is:");
endfunction
//Calling Routine
name=struct('first','praveen','midinit','rajeev','last','chauhan');
count=writename(name)