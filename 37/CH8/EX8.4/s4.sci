//Finnding Transitive Closure
funcprot(0)
function[path]=Tranclose(adj,n);
  i=1,j=1;
  path=zeros(n*n,1);
  path=tranclose(adj,n);
  printf("Transitive Closure Of Given Graph is:\n");
  for i=1:n
    printf("For Vertex %d\n",i);
    for j=1:n
      printf(" %d %d is %d\n",i,j,path((i-1)*n+j));
    end
  end
  
endfunction
function[path]=tranclose(adj,n)
  adjprod=zeros(n*n,1);
  k=1;
  newprod=zeros(n*n,1);
  for i=1:n
    for j=1:n
      path((i-1)*n+j)=adj((i-1)*n+j);
      adjprod((i-1)*n+j)= path((i-1)*n+j);
    end
  end
  for i=1:n
    newprod=prod1(adjprod,adj,n);
    for j=1:n
      for k=1:n
        path((j-1)*n+k)=path((j-1)*n+k)|newprod((j-1)*n+k);
      end
    end
    for j=1:n
      for k=1:n
        adjprod((j-1)*n+k)=newprod((j-1)*n+k);
      end
    end
  end
endfunction
function[c]=prod1(a,b,n)
  for i=1:n
    for j=1:n
      val=0
      for k=1:n
        val=val|(a((i-1)*n+k)&b((k-1)*n+j));
      end
      c((i-1)*n+j)=val;
    end
  end
endfunction
//Calling Routine:
n=3;
adj=[0 1 0 0 0 1 0 0 0]
path=Tranclose(adj,n)