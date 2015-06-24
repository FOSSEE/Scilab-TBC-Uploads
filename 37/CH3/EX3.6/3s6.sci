funcprot(0)
function[y]=find1(g)
  length1=strlen(g);
  if(length1==0)
    y=0;
  else
    if(isalphanum(g(1)))
      y=1;
    else
      if(length1<2)
        y=0;
      else
         s=strsplit(g,1);
         s=s(2);
         m=find1(s);
         if(m==0|length1==m)
           y=0;
         else
            e=strsplit(g,m+1);
            e=e(2);
            n=find1(e);
            if(n==0)
              y=0;
            else
              y=m+n+1;
            end
          end
        end
      end
    end
  endfunction
  function[l]=strlen(x)
  i=1;
  l=0;
  [j,k]=size(x)
  for  i=1:k
    l=l+length(x(i));
  end
endfunction
function[po]=pr2po(pr)
  length1=strlen(pr);
  if(length1==1)
    if(isalphanum(pr))
      po(1)=pr(1);
    else
      disp("Invalid string\n");
    end
  else
    s=strsplit(pr,1);
    g=s(2);
    m=find1(g);
    s=strsplit(pr,m+1);
    g1=s(2);
    n=find1(g1);
    f=strsplit(pr,1);
    c=f(1);
    if((c~='+'&c~='-'&c~='/'&c~='*')|m==0|n==0|m+n+1~=length1)
      printf("Invalid string\n");
    else
      s=strsplit(pr,1);
      s=strsplit(s(2),m);
      opnd1=s(1);
      s=strsplit(pr,m+1);
      opnd2=s(2);
      post1=pr2po(opnd1);
      post2=pr2po(opnd2);
      post=[post1(:,:) post2(:,:)]
      f=strsplit(pr,1);
      c=f(1);
      post3=[post(:,:) c];
      po=post3;
     end
   end   
 endfunction
 //Calling Routine:
 
 s1="+-*abcd";//no spaces between
 po=pr2po(s1);
 disp(po,"postfix is");
 s1="+-*/+-*/abcdefghi"
 po=pr2po(s1);
 disp(po,"postfix is");