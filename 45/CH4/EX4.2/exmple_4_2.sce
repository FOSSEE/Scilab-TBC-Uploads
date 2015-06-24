//example 4.2 
clc;
clear
a(1,1)=0 // taking input in this  form 1 if A, 0if A' and 2 if no A in the term
a(1,2)=1
a(1,3)=2
a(2,1)=2
a(2,2)=0
a(2,3)=0
a(3,1)=1
a(3,2)=1
a(3,3)=1
p=3;
for i=1:3  // finding the minterms here 
    coun =0;
    for j=1:3
    if a(i,j)==2 then
    coun = coun+1
    end
 end
 if coun == 2  then
     p=p+3
 else if coun==1 then
    p=p+1
 end
end
end
n=4;
for m=4:p
    for l=1:3
        a(m,l)=0;
    end
end
for i= 1:p
    for j=1:3
        if a(i,j) ==2 then
            for k=1:3
                a(n,k)=a(i,k)
            end
            a(i,j) = 0;
            a(n,j)=1;
            n=n+1;
        end
    end
end
for h=1:p
    f(h)=0
    c=2;
for m=1:3  //finding equivlent decimal values for the minterms 
    f(h)= f(h) + a(h,m)*(2^c);
    c=c-1;
end
end
disp('The min terms are :') //displaying the min terms 
disp('   A     B     C')
disp(a)
l=1
o(1,l)= f(l);  // removing the repetations in minterms 
for i=2:p
    q=0;
        for b=1:l
        if o(1,b) == f(i) then
            q=89 ;
        end
    end
    if q==0 then
        o(1,l+1)=f(i);
        l=l+1;
        q=0;
    end
end
disp('The following data lines are to be given ''1'' and remaining should be given ''0'); // displying the decimal equivlent of minterms 
disp(o);
disp('For a 4-1 mux, we should give D0 =C'',D1 = ''1'',D2 = C'' and D3 = C with A and B as data selector inputs ');