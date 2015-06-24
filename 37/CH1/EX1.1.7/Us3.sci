//Exercise 1.1Example 1.1.7
//TO Convert Binary To Ternary
function[t]=bin_ter(a)
  b=0
  b=base2dec(a,2);
  disp(b);
  [j,i]=size(a);
  t=[];
  while(b~=0)
    m=modulo(b,3);
    t=[t(:,:) m];
    b=b/3;
    b=b-modulo(b,10);
  end
  disp(t,"Ternary Equivalent");
endfunction
//Calling Routine:
a="100101101110"
disp(a,"input string is");
b=bin_ter(a)