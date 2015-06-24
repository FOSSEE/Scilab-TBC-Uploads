clear;
clc;
N1=2;
N2=3;
//n=1;
//while(n<=N1)
//    i(n)=input("enter the elements of first set");
//    n=n+1;
//end;
i=['p' 'q'];    //set A
//n=1;
//while(n<=N2)
//    j(n)=input("enter the elements of second set");
//    n=n+1;
//end;
j=['r' 's' 't'];    //set B
c=1;d=1;
for a=1:1:N1    //realtion between sets A and B
    for b=1:1:N2
      m(c,d)=i(a);
      m(c,d+1)=j(b);
      c=c+1;
    end;
end;
disp(m);