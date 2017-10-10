//Eg-4.21
//pg-202

clear
clc


//After complex root substitution a+ib

deff('[z]=u(a,b)','z=a^2-b^2-2*a+2');
deff('[z]=v(a,b)','z=2*a*b-2*b');
deff('[z]=ua(a)','z=2*a-2');
deff('[z]=ub(b)','z=-2*b');
ain=0.5;
bin=.5;

for i=1:6
    U=feval(ain,bin,u);
    V=feval(ain,bin,v);
    UA=feval(ain,ua);
    UB=feval(bin,ub);
    anew=ain+(V*UB-U*UA)/(UA^2+UB^2);
    bnew=bin+(V*UA-U*UB)/(UA^2+UB^2);
    ain=anew;
    bin=bnew;
end

printf('\nThe complex root is %f + i(%f) \n',ain,bin)
