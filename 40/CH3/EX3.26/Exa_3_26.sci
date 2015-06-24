//Response of periodic inputs
function[p]=period(x)
for i=2:length(x)
    v=i
    if (abs(x(i)-x(1))<0.00001)    
        k=2
        for j=i+1:i+i
            if (abs(x(j)-x(k))<0.00001)   
                v=v+1
            end
        k=k+1;      
        end
     end 
    if (v==(2*i)) then
        break
    end
end
p=i-1
endfunction
x=[1 2 -3 1 2 -3 1 2 -3];
h=[1 1];
y=convol(x,h)
y(1)=y(4);
period(x)
period(y)
h=[1 1 1];
y=convol(x,h)