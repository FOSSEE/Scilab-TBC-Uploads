clear;
clc;
//N=input("enter the elements in the set :");
//for i=1:1:N
//    s(i)=input("enter the elements :");
//end
N=2;
s=['a' 'b'];
disp("The equivalence relation of above set is :");
h=1;
for i=1:1:N        //to satisfy reflexive property
    ref(h,1)=s(i);
    ref(h,2)=s(i);
    h=h+1;
end
for i=1:1:N        //to satisfy symmetric property
    for j=i:1:N
        if(i~=j)
            ref(h,1)=s(i);
            ref(h,2)=s(j);
            h=h+1;
        end
    end
end
m=1;
for i=1:max(size(ref(:,1)))        //to satisfy transtive property
    if(ref(i,1)~=ref(i,2))
        ref1(m,1)=ref(i,2);
        ref1(m,2)=ref(i,1);
        m=m+1;
    end
end
disp(ref);
disp(ref1);