clc;
clear;
T1=[1 0 1 1];
h=[1 1 0 1 0 0 0 0 0];
in=[1 0 1 1];
l=1;
for i=2:max(size(in(1,:)))
    h1=h;
    if(in(i)==1)
        for k=1:i-1
            t=h1(max(size(h1(1,:))));
            for j=max(size(h1(1,:)))-1:-1:1
                h1(j+1)=h1(j);
            end
            h1(1)=t;
        end
        D(l,:)=h1(1,:);
        l=l+1;
    end
end
output=h+D(1,:)+D(2,:);
output=modulo(output,2);
disp(output);