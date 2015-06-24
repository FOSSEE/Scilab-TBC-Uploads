clear;
clc;
i=1;
//all combinations of 2 variable inputs
f(:,1)=[0;0;1;1];
f(:,2)=[0;1;0;1];
//verifying D'morgan first law
for a=0:1
    for b=0:1
        f(i,3)=bitcmp(bitor(a,b),1);
        f(i,4)=bitand(bitcmp(a,1),bitcmp(b,1));
        i=i+1;
    end
end
disp("   a    b    (a+b)^    a^b^");
disp(f);
disp("Therefore (a+b)^=a^ b^ ");
//verfying D'morgan 2nd law
i=1;
for a=0:1
    for b=0:1
        f(i,3)=bitcmp(bitand(a,b),1);
        f(i,4)=bitor(bitcmp(a,1),bitcmp(b,1));
        i=i+1;
    end
end
disp("   a    b    (ab)^    a^+b^");
disp(f);
//proving D'morgans laws theoritically
disp("(a+b)^=a^.b^");
disp("(a.b)^=a^+b^");
disp("we have show that (a+b)(a+b)^=0 and (a+b)+a^.b^=1");
disp("(a+b)a^b^=aa^b^+ba^b^=0+a^bb^=0+0=0");
disp("(a+b)+a^b^=a+b+a^b^=a+b+a^=b+a+a^=b+1=1");
disp("This proves the first Dmorgan law and in the similar way 2nd law can also be proved");