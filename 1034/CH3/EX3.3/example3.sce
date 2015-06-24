//Solved Example 3.3:
//Convering an infix expression to a Postfix Expression:
function[sta]=push(stac,ele)
  sta=0;
  if(stac.top==0)
    stac.a=ele;
    stac.top=stac.top+1;
  else
    stac.a=[stac.a(:,:) ele]
    stac.top=stac.top+1;
  end
  disp(stac);
  sta=stac;
endfunction

function[ele,sta]=pop(stack)
  ele='-1';
  if(stack.top==0)
    disp("Stack Underflow");
    break;
  else
    ele=stack.a(stack.top);
    stack.top=stack.top-1;
    if(stack.top~=0)
      b=stack.a(1);
    for i2=2:stack.top
      b=[b(:,:) stack.a(i2)];
    end
    stack.a=b;
  else
    stack.a='0';
  end
  end
  sta=stack;
endfunction
function[l]=strlen(x)
  i=1;
  l=0;
  [j,k]=size(x)
  for  i=1:k
    l=l+length(x(i));
  end
endfunction
function[p]=pre(s1,s2)
     i1=0;
    select s1,
    case '+' then i1=5;
    case '-' then i1=5;
    case '*' then  i1=9;
    case '/' then i1=9;
    end
    i2=0;
    select s2,
    case '+' then i2=5;
    case '-' then i2=5;
    case '*' then  i2=9;
    case '/' then i2=9;
    end
    p=0;
    p=i1-i2;
    if(s1=='(')
      p=-1;
    end
    if(s2=='('&s1~=')')
      p=-1;
    end
    if(s1~='('&s2==')')
      p=1;
    end
    
  endfunction
function[a2]=intopo(a1,n)
  stack=struct('a',0,'top',0);
  l1=1;
  l2=strlen(a1(1))
  for i=2:n
    l2=l2+strlen(a1(i))
  end
  a2=list();
  while(l1<=l2)
    symb=a1(l1); 
    if(isalphanum(string(a1(l1))))
      a2=list(a2,symb);
    else
      while(stack.top~=0&(pre(stack.a(stack.top),symb)>=0))
        [topsymb,stack]=pop(stack);
        if(topsymb==')'|topsymb=='(')
          a2=a2;
        else
          a2=list(a2,topsymb);
        end
      end
      if(stack.top==0|symb~=')')
        stack=push(stack,symb);
      else
        [ele,stack]=pop(stack);
      end
    end
    l1=l1+1;
  end
  while(stack.top~=0)
    [topsymb,stack]=pop(stack);
    if(topsymb==')'|topsymb=='(')
      a2=a2;
    else
      a2=list(a2,topsymb);
    end
  end
  disp(a2);
endfunction
//Calling Routine:
a1=['(' '2' '+' '3' ')' '*' '(' '5' '-' '4' ')']
a2=intopo(a1,11)