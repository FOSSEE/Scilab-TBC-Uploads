clear;
clc;
//N=input("enter the no of elements in the set :");
//for i=1:1:N
//    s(1,i)=input("enter the elements in the set :");
//end;
//n=input("enter the number of pairs in the relation :");
//for j=1:1:n
//    for k=1:1:2
//        r(j,k)=input("enter the elements in the relation :");
//    end
//end
N=2;
s=['a' 'b'];        //elements in the set
n=3;
r=['a' 'a';'b' 'b';'a' 'b'];    //realtion between the elements in the above set.
ref=zeros(1,N);
for a=1:1:N
   for b=1:1:n
      if(r(b,1)==s(1,a)&r(b,2)==s(1,a))
           ref(1,a)=1;
      end
   end
end
for i=1:1:N        //checking whether above relation is reflexive or not
    if(ref(1,i)==1)
        disp("the above relation is reflexive with elements ");
        disp(s(1,i));
        disp(" ");
    end
end
sym=zeros(1,(N*N-1)/2);
s(1,N+1)=s(1,1);
for a=1:1:N            //checking whether above relation is symmetric or not
   for b=1:1:n
      if(r(b,1)==s(1,a)&r(b,2)==s(1,a+1))
          for d=1:1:n
            if(r(d,1)==s(1,a+1)&r(d,2)==s(1,a))
                sym(1,a)=1;
                disp("the above relation is symmetric for these pairs :");
                disp(")",s(1,a+1),s(1,a),"(");
            end
          end
       end
    end
end
for a=1:1:n            //checking whether it is transtive or not.
    u=r(a,1);
    v=r(a,2);
        for b=a:1:n
            if(r(b,1)==v)
                w=r(b,2);
                    for c=b:1:n
                        if(r(c,1)==w&r(c,2)==u)
                            disp("satisfies transtitve property");
                            abort;
                        end
                    end
            end
        end
end