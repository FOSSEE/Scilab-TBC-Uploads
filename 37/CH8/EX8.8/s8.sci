//Dijkstras Algorithm
funcprot(0)
function[l]=short(adj,w,i1,j1,n)
  for i=1:n
    for j=1:n
      if(w((i-1)*n+j)==0)
        w((i-1)*n+j)=9999;
      end
    end
  end
  
  distance=[];
  perm=[];
  for i=1:n
    distance=[distance(:,:) 99999];
    perm=[perm(:,:) 0];
  end
  perm(i1)=1;
  distance(i1)=0;
  current=i1;
  while(current~=j1)
    smalldist=9999;
    dc=distance(current);
    for i=1:n
      if(perm(i)==0)
        newdist=dc+w((current-1)*n+i);
        if(newdist<distance(i))
          distance(i)=newdist;
        end
        if(distance(i)<smalldist)
          smalldist=distance(i);
          k=i;
        end
      end  
    end
    current=k;
    perm(current)=1;
  end
  l=distance(j1);
  printf("The  shortest path between %d and %d is %d",i1,j1,l);
endfunction
//Calling Routine:
n=3;
adj=[0 1 1 0 0 1 0 0 0]//Adjacency  List
w=[0 12 22 0 0 9 0 0 0]//weight list fill 0 for no edge
short(adj,w,1,3,n);