clear;
clc;
a1=0;a2=a1;a3=a1;
//all combinations of 2 varible inputs
f(:,1)=[0;0;1;1];
f(:,2)=[0;1;0;1];
disp("The turth table of f for all the combinations of a0,a1,a2,a3 are shown below")
//determining the values of f for all combinations of a0,a1,a2,a3
for a3=0:1
    for a2=0:1
        for a1=0:1
            for a0=0:1
                disp(['   a3' '  a2' '  a1' '  a0']);
                disp([a3 a2 a1 a0]);
                    i=1;
                for x=0:1
                    for y=0:1
                        f0=bitand(a0,bitand(bitcmp(x,1),bitcmp(y,1)));
                        f1=bitand(a1,bitand(bitcmp(x,1),y));
                        f2=bitand(a2,bitand(x,bitcmp(y,1)));
                        f3=bitand(a3,bitand(x,y));
                        f4=bitor(f0,f1);
                        f5=bitor(f2,f3);
                        f(i,3)=bitor(f4,f5);
                        i=i+1;
                    end
                end
                disp(['   x' '   y' '   f']);
                disp(f);
                disp('*--------------------*');
            end
        end
    end
end