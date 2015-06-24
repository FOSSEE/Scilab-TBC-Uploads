//Exercise question 2:
//Implementing Push And Pop Functions:
function[y,sta1]=empty(sta)
  y=0;
  sta1=0;
  if(sta.top==0)
    y=0;
  else
    y=1;
  end
  sta1=sta
endfunction

function[sta]=push(stac,ele)
  sta=0;
  if(empty(stac)==0)
    stac.a=ele;
    stac.top=stac.top+1;
  else
    stac.a=[stac.a(:,:) ele]
    stac.top=stac.top+1;
  end
  disp(stac);
  sta=stac;
  funcprot(0)
endfunction

function[ele,sta]=pop(stack)
  ele='-1';
  if(empty(stack)==0)
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
  disp(stack);
  sta=stack;
endfunction
global stack
//Calling Routine:
stack=struct('a',0,'top',0);
stack=push(stack,4);
stack=push(stack,55);
stack=push(stack,199);
stack=push(stack,363);
[ele,stack]=pop(stack);
disp(stack,"After the above operations stack is:");
