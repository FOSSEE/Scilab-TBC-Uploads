//Warshall's Algorithm
funcprot(0)
function[path]=transclose(adj,n)
  for  i=1:n
    for j=1:n
      path((i-1)*n+j)=adj((i-1)*n+j);
    end
  end
  for k=1:n
    for  i=1:n
      if(path((i-1)*n+k)==1)
        for j=1:n
          path((i-1)*n+j)=path((i-1)*n+j)|path((k-1)*n+j);
        end
      end
    end
  end
  printf("Transitive closure for the given graph is:\n");
  for  i=1:n
    printf("For vertex %d \n",i);
    for j=1:n
       printf("%d %d is %d\n",i,j,path((i-1)*n+j));
    end
  end
endfunction
//Calling Routine:
n=3;
adj=[0 1 0 0 0 1 0 0 0]
path=Tranclose(adj,n)