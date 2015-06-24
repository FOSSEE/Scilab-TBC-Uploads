//Finding The  Number Of Simple Paths From One Point To Another In A Given Graph
funcprot(0)
function[]=sim_path(n,adj,i,j);
  l=0;
  m=1;
  for m=1:n
    l=l+path(m,n,adj,i,j);
  end
  printf("There are %d  simple paths from %d to %d in the given graph\n",l,i,j);
endfunction
function[b]=path(k,n,adj,i,j)
  b=0;
  if(k==1)
    b=adj((i-1)*n+j);
  else
    for c=1:n
      if(adj((i-1)*n+c)==1)
        b=b+path(k-1,n,adj,c,j);
      end
    end
  end
  return b;
endfunction
n=3;
adj=[0 1 1 0 0 1 0 0 0];
b=sim_path(n,adj,1,3)

