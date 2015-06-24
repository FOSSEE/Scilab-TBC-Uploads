clc;
clear;
z=1;
//evaluating first expression
for  i=0:1
    for j=0:1
        for k=0:1
            for l=0:1
                f1(z,1)=bitor(bitand(i,j),bitand(k,l));
                z=z+1;
            end
        end
    end
end
z=1;
//evaluating 2nd expression
for  i=0:1
    for j=0:1
        for k=0:1
            for l=0:1
                f2(z,1)=bitand(bitand(i,j),bitcmp(k,1));
                z=z+1;
            end
        end
    end
end
//determining whether f covers h or not.
for i=1:16
    if(f2(i,1)==1)
        if(f2(i,1)==f1(i,1))
            ;
            else
            disp("f doesnt cover h");
            abort;
        end
     end
end
disp("f covers h  and h implies f");