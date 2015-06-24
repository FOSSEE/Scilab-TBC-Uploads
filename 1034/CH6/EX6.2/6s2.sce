clear;
clc;
disp("Example 6.2");
////BFS Traversal
funcprot(0)
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

function[]=Bfs(adj,n);
  i=1,j=1;
  colour=[];
  for i=1:n
  for j=1:n
      colour=[colour(:,:) 0];
    end
  end
  disp("The BFS Traversal is");
bfs(adj,colour,1,n);  
endfunction
function[]=bfs(adj,colour,s,n)
  colour(s)=1;
  q=struct('rear',0,'front',0,'a',0);
  q=push(s,q);
  while((q.rear)-(q.front)>0)
    [u,q]=pop(q);
    disp(u," ");
    for i=1:n
      if(adj((u-1)*n+i)&(colour(i)==0))
        colour(i)=1;
        q=push(i,q);
      end
    end
    colour(u)=2;
  end
endfunction
//Calling Routine:
n=4;
adj=[0 1 1 0 0 0 0 1 0 0 0 1 0 0 0 0]
Bfs(adj,n)