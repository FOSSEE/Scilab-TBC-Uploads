    clc;
    // Define the polynomial
    s=poly(0,"s");
    p=30+4*s+s^2+s^3;
    [C]=coeff(p);
    l1=length(C);
    x=0;
    for i1=1:l1
        a1=C(1,i1);
        r1=real(a1);
        if r1>0
            x=x+1;
        end
    end
    if(x==l1) then
        [S]=roots(p);
        disp(S,"Roots=");
        l=length(S);
        c=0;
        for i=1:l
            a=S(i,1);
            r=real(a);
            if r<0 then
                c=c+1;
            end
        end
        if(c==l) then
            printf("Polynomial is Hurwitz");
        else 
            printf("Polynomial is non-Hurwitz");
        end
    else 
        printf("Polynomial is non-Hurwitz");
    end