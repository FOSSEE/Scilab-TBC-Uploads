//Solved Example 1
//To  determine the syntacticaly valid string
function[l]=strlen(x)
  i=1;
  l=0;
  [j,k]=size(x)
  for  i=1:k
    l=l+length(x(i));
  end
endfunction
function[]=stringvalid(str)
  str=string(str);
  stack=struct('a','0','top',0);
  l1=strlen(str);
  valid=1;
  l=1;
  while(l<=l1)
      if(str(l)=='('|str(l)=='['|str(l)=='{')
        if(stack.top==0)
          stack.a=str(l);
          stack.top=stack.top+1;
        else
          stack.a=[stack.a(:,:) str(l)];
          stack.top=stack.top+1;
        end
        disp(stack);
      end
      if(str(l)==')'|str(l)==']'|str(l)=='}')
        if(stack.top==0)
          valid=0;
          break;
        else
          i=stack.a(stack.top);
          b=stack.a(1);
          for i1=2:stack.top-1
            b=[b(:,:) stack.a(i1)]
          end
          stack.a=b;
         stack.top=stack.top-1;
         symb=str(l);
         disp(stack);
         if(((symb==')')&(i=='('))|((symb==']')&(i='['))|((symb='}')&(i='{')))
        else
          valid=0;
          break;
        end
      end
    end
      l=l+1;
    end
    if(stack.top~=0)
      valid=0;
    end
    if(valid==0)
      disp("Invalid String");
    else
      disp("Valid String");
    end
  endfunction
  //Calling Routine:
  stringvalid(['(' 'A' '+' 'B' '}' ')'])
  stringvalid(['{' '[' 'A' '+' 'B' ']'  '-' '[' '(' 'C' '-'  'D' ')' ']'])
  stringvalid(['(' 'A' '+' 'B' ')' '-' '{' 'C' '+' 'D' '}' '-' '[' 'F' '+' 'G' ']'])
  stringvalid(['(' '(' 'H' ')' '*' '{' '(' '[' 'J' '+' 'K' ']' ')' '}' ')'])
  stringvalid(['(' '(' '(' 'A' ')' ')' ')'])