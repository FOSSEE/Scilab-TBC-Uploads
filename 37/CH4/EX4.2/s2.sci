//Queue  Operations
function[q2]=push(ele,q1)
  if(q1.rear==q1.front)
    q1.a=ele;
    q1.rear=q1.rear+1;
  else
    q1.a=[q1.a(:,:) ele];
    q1.rear=q1.rear+1;
  end
  q2=q1;
endfunction
function[ele,q2]=pop(q1)
  ele=-1;
  q2=0;
  if(q1.rear==q1.front)
    disp("Queue Underflow");
    return;
  else
    ele=q1.a(q1.rear-q1.front);
    q1.front=q1.front+1;
    i=1;
    a=q1.a(1);
    for i=2:(q1.rear-q1.front)
      a=[a(:,:) q1.a(i)];
    end
    q1.a=a;
  end
  q2=q1;
endfunction
//Calling Routine:
q1=struct('a',0,'rear',0,'front',0)
q1=push(3,q1)
q1=push(22,q1);
q1=push(21,q1);
disp(q1,"Queue after insertion");
[ele,q1]=pop(q1)
disp(ele,"poped element");
disp(q1,"Queue after poping");
[ele,q1]=pop(q1);
[ele,q1]=pop(q1);
[ele,q1]=pop(q1);//Underflow Condition