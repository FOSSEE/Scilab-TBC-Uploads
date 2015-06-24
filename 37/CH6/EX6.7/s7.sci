function[tree1]=binary(tree,x)
  p=1;
  while(tree(p)~=-1&tree(p)~=-2)
    q=p;
    if(tree(p)>x)
      p=2*p;
    else
      p=2*p+1;
    end
  end
  if(tree(q)>x)
      tree(2*q)=x;
  else
      tree(2*q+1)=x;
  end
  tree1=tree;
endfunction
funcprot(0);
function[tree]=maketree(x)
  tree=zeros(100,1);
  for i=1:100
    tree(i)=-1;
  end
  tree(1)=x;
  tree(2)=-2;
endfunction
function[]=inorder(tree,p)
  if(tree(p)==-1|tree(p)==-2)
    return;
  else
    inorder(tree,2*p);
    printf("%d\t",tree(p));
    inorder(tree,2*p+1);
  end
endfunction
function[]=binsort(a,n)
  a1=maketree(a(1))
  for i=2:n
    a1=binary(a1,a(i));
  end
  disp("Sorted array is:");
  inorder(a1,1);
endfunction
//Calling Routine:
a=[23 21 232 121 2324 1222433 1212]
disp(a,"Given Array");
a1=binsort(a,7)