//Simple Graph Functions
function[]=graph();
  
  i=1,j=1;
  adj=zeros(10000);
  for i=1:n
  for j=1:n
      
      adj((i-1)*n+j)=temp;
    end
  end
  for i=1:n
    for  j=1:n
      if((adj((i-1)*n+j))==1)
        printf("Vertex %d is connected to vertex %d\n",i,j);
      end
    end
  end
  
endfunction