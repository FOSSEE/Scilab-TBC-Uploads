//List Insertion.
clc;
clear;
disp("Example 4.3");
funcprot(0)
function[link2]=insert_pri(ele,link1)
  link2=list(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,,0,0);
  if(link1(1)(1).add==0)
    link1(1)(1).data=ele;
    link1(1)(1).add=1;
    link1(1)(1).nexadd=1;
    link2(1)=link1(1)(1);
  else
    if(link1(1)(1).nexadd==link1(1)(1).add)
      if(ele>=link1(1)(1).data)
        t=ele;
        p=link1(1)(1).data;
      else
        t=link1(1)(1).data;
        p=ele;
      end
      link1(1)(1).data=t;
      lin2=link1(1)(1);
      lin2.data=p;
      lin2.add=2;
      lin2.nexadd=link1(1)(1).add;
      link1(1)(1).nexadd=lin2.add;
      link2(1)=link1(1)(1);
      link2(2)=lin2;
    else
      i=1;
      a=[];
      while(link1(i).nexadd~=link1(1)(1).add)
        a=[a(:,:) link1(i).data];
        i=i+1;
      end
      a=[a(:,:) link1(i).data];
      a=gsort(a);
      j=1;
      while(j<=i)
        link1(j).data=a(j);
        j=j+1;
      end
      k=1;
      while(link1(k).data>=ele)
        if(link1(k).nexadd==link1(1)(1).add)
          break;
        else
          link2(k)=link1(k);
          k=k+1;
        end
      end
       if(link1(k).nexadd~=link1(1)(1).add)
         lin2=link1(k);
         lin2.data=ele;
         lin2.add=link1(k).add;
         j=k;
         y=link1(1)(1).add;
         while(link1(k).nexadd~=y)
           link1(k).add=link1(k).add+1;
           link1(k).nexadd=link1(k).nexadd+1;
           k=k+1;
         end
         link1(k).add=link1(k).add+1;
         lin2.nexadd=link1(j).add;
         link2(j)=lin2;
         j=j+1;
         while(j<=k+1)
           link2(j)=link1(j-1);
           j=j+1;
         end
       else
         lin2=link1(k);
         lin2.data=ele;
         lin2.nexadd=link1(1)(1).add;
         lin2.add=link1(k).add+1;
         link1(k).nexadd=lin2.add;
         j=1;
         while(j<=k)
           link2(j)=link1(j);
           j=j+1;
         end
         link2(j)=lin2;
       end
     end
   end
 endfunction
 //Calling Routine:
 link1=struct('data',0,'add',0,'nexadd',0);
 link1=insert_pri(3,link1);
 link1=insert_pri(4,link1);
 link1=insert_pri(22,link1);
 link1=insert_pri(21,link1);
 link1=insert_pri(11,link1);
 disp(link1,"List After Insertions");