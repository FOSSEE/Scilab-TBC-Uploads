//example 2.6 pg.no.23
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
for i=1:60
    x1(i)=cos((2*%pi*8*i)/25);
end
for i=1:60
    x2(i)=exp(%i*0.2*i*%pi)+exp(-%i*0.3*i*%pi);
end
for i=1:45
    x3(i)=2*cos((40*%pi*i)/75)+sin((60*%pi*i)/75);
end
period(x1)
period(x2)
period(x3)