clc;
// Define the polynomial
//z=poly(0,'z');
//z^3 - 0.3*z^2 + .1*z -.1
//Put z=(1+r)/(1-r); 
//Bilinear transformation
s=poly(0,'s');
p=.7+2.9*s+2.9*s^2+1.7*s^3;
// Calculate the routh of above polynomial
r=routh_t(p);
disp(r,"Routh array=");
A=r(:,1);
    c=0;
    x=0;
    for i=1:3
        x=A(i,1);
        if x<0
            c=c+1;
        end
    end
    if(c>=1) then
        printf("system is unstable");
    else 
        l=length(A);
        c=0;
        for i=1:l
            a=A(i,1);
            r=real(a);
            if r<0 then
                c=c+1;
            end
        end
        if c==0 then
           printf("system is stable");
        else
            printf("system is unstable");
        end

    end