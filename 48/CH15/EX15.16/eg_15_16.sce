clc;
clear;
n=4;
a=zeros(1,n);
for i=1:n
    for j=1:n
        pad(i,j)=modulo(i+j-2,4);
    end
end
for i=1:n
    for j=1:n
        pmu(i,j)=modulo((i-1)*(j-1),4);
    end
end
t=0;
for i=1:n
    for j=1:n
        if(pad(i,j)==1)
            t=1;
            break;
        end
     end
end
if(t==0)
    disp("Modulo 4 ring is not a field");
end
for i=0:3
    for j=0:3
        if(modulo(i*j,4)==1)
            a(i)=1;
        end
    end
end
res=0;
for i=1:max(size(a))
   if(a(i)==1)
      res=res+1;
    end
end
if(res==4)
    disp("Modulo 4 ring is a field");
else
    disp("Modulo 4 ring is not a field");
end