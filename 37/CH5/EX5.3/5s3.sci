funcprot(0);
function[tree]=maketree(x)
  tree=zeros(1,30);
  for i=1:30
    tree(i)=-1;
  end
  tree(1)=x;
  tree(2)=-2;
endfunction
function[tree1]=setleft(tree,tre,x)
  tree1=[];
  i=1;
  while(tree(i)~=-2)
    if(tree(i)==tre)
      j=i;
    end
    i=i+1;
  end
  if(i>2*j)
    tree(2*j)=x;
  else
    tree(2*j)=x;
    tree(2*j+1)=-2;
    for l=i:2*j-1
      tree(i)=-1;
    end
  end
  tree1=tree;
endfunction
function[tree1]=setright(tree,tre,x)
  tree1=[];
  i=1;
  while(tree(i)~=-2)
    if(tree(i)==tre)
      j=i;
    end
    i=i+1;
  end
  if(i>2*j+1)
    tree(2*j+1)=x;
  else
    tree(2*j+1)=x;
    tree(2*j+2)=-2;
    for l=i:2*j
      tree(i)=-1;
    end
  end
  tree1=tree;
endfunction
function[x]=isleft(tree,tre)
  i=1;
  x=0;
  while(tree(i)~=-2)
    if(tree(i)==tre)
      j=i;
    end
    i=i+1;
  end
  if(i>=2*j)
    if((tree(2*j)~=-1)|(tree(2*j)~=-2))
      x=1;
      return 1;
    else
      return 0;
    end
  else
    x=0;
    return x;
  end
endfunction
function[x]=isright(tree,tre)
  i=1;
  x=0;
  while(tree(i)~=-2)
    if(tree(i)==tre)
      j=i;
    end
    i=i+1;
  end
  if(i>=2*j+1)
    if((tree(2*j+1)~=-1)|(tree(2*j+1)~=-2))
      x=1;
      return 1;
    else
      return 0;
    end
  else
    x=0;
    return x;
  end
endfunction
funcprot(0);
function[]=inorder(tree,p)
  if(tree(p)==-1|tree(p)==-2)
    return;
  else
    inorder(tree,2*p);
    disp(tree(p),"  ");
    inorder(tree,2*p+1);
  end
endfunction
function[]=preorder(tree,p)
  if(tree(p)==-1|tree(p)==-2)
    return;
  else
    disp(tree(p),"  ");
    preorder(tree,2*p);
    preorder(tree,2*p+1);
  end
endfunction
function[]=postorder(tree,p)
  if(tree(p)==-1|tree(p)==-2)
    return;
  else
    postorder(tree,2*p);
    postorder(tree,2*p+1);
    disp(tree(p),"  ");
  end
endfunction
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
  i=1;
  while(tree(i)~=-2)
    i=i+1;
  end
  if(tree(q)>x)
    if(i==2*q)
      tree(2*q)=x;
      tree(2*q+1)=-2
    else
      if(i<2*q)
        tree(i)=-1;
        tree(2*q+1)=-2;
        tree(2*q)=x;
      end
    end
    
  else
    if(i==2*q+1)
      tree(2*q+1)=x;
      tree(2*q+2)=-2;
    else
      if(i<2*q+1)
        tree(i)=-1;
        tree(2*q+1)=x;
        tree(2*q+2)=-2;
      end
    end
    
  end
  tree1=tree;
endfunction
//Calling Routine:
tree=maketree(3);
tree=binary(tree,1);
tree=binary(tree,2);
tree=binary(tree,4);
tree=binary(tree,5);
disp(tree,"Binary tree thus obtaine by inserting 1,2,4and5 in tree rooted 3 is:");