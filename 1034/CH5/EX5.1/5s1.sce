
funcprot(0);
function[tree]=maketree(x)
  tree=zeros(30,1);
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
//Calling Routine:
tree=maketree(3);
disp(tree,"Tree made");
tree=setleft(tree,3,1);
disp(tree,"After setting 1 to left of 3");
tree=setright(tree,3,2);
disp(tree,"After setting 2 to right of 3");
tree=setright(tree,2,4);
tree=setleft(tree,2,5);
tree=setright(tree,1,6);
tree=setright(tree,5,8);
disp(tree,"After above operations:");
x=isright(tree,3);
disp(x,"Checking for the right son of 3 yes if 1 else no");
x=isleft(tree,2);
disp(x,"Check for left son of 2");
