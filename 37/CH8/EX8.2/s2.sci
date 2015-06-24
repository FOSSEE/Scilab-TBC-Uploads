//Finding The Number Of Paths From One Vertex To Another Of A Given Length

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
    printf("Number of paths from vertex %d to %d of length %d are %d",i,j,k,b);
  return b;
endfunction
//Calling Routine:
n=3;
adj=[0 1 1 0 0 1 0 0 0]
b=path(1,n,adj,1,3)