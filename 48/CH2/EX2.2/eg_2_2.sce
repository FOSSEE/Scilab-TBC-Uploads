clear;
clc;
//N=input("enter the elements in the set");
//n=1;
//while(n<=N)
//    i(n)=input("enter the elements of first set");
//    n=n+1;
//end;
N=6;
i(1)='f1';i(2)='f2';i(3)='f3';i(4)='f4';i(5)='f5';i(6)='f6';
disp("null set");   //since null set is subset of any set.
for a=1:1:N        //set of single elements
    disp(i(a));
end
c=1;
for a=1:1:N-1            //set of two elements
    for b=a:1:N
        if(a~=b)
          m(c,1)=i(a);
          m(c,2)=i(b);
          c=c+1;
        end
    end;
end;
disp(m);
d=1;
for a=1:1:N            //set of three elements
    for b=a:1:N
        for c=b:1:N
            if((a~=b)&(b~=c)&(c~=a))
               p(d,1)=i(a);
               p(d,2)=i(b);
               p(d,3)=i(c);
               d=d+1;
            end
        end
    end
end
disp(p);
e=1;
for a=1:1:N            //set of four elements
    for b=a:1:N
        for c=b:1:N
            for d=c:1:N
                if((a~=b)&(b~=c)&(c~=d)&(d~=a)&(b~=d)&(a~=c))
                   q(e,1)=i(a);
                   q(e,2)=i(b);
                   q(e,3)=i(c);
                   q(e,4)=i(d)
                   e=e+1;
                end
            end
        end
    end
end
disp(q);
f=1;
for a=1:1:N            //set of five elements
    for b=a:1:N
        for c=b:1:N
            for d=c:1:N
                for e=d:1:N
                    if((a~=b)&(b~=c)&(c~=d)&(d~=e)&(e~=a)&(a~=c)&(a~=d)&(b~=d)&(c~=e)&(b~=e))
                       r(f,1)=i(a);
                       r(f,2)=i(b);
                       r(f,3)=i(c);
                       r(f,4)=i(d);
                       r(f,5)=i(e);
                       f=f+1;
                    end
                end
            end
        end
    end
end
disp(r);
for a=1:1:N            //set of six elements
    s(1,1)=i(1);
    s(1,2)=i(2);
    s(1,3)=i(3);
    s(1,4)=i(4);
    s(1,5)=i(5);
    s(1,6)=i(6);
end
disp(s);