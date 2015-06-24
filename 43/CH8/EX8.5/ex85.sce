    clc;
    // Define the polynomial
    s=poly(0,"s");
    p=36+12*s+12*s^2+3*s^3+s^4;
    // Calculate the routh of above polynomial
    r=routh_t(p);
    disp(r,"Routh array=");
    A=r(:,1);
    c=0;
    x=0;
    for i=1:5
        x=A(i,1);
        if x<0
            c=c+1;
            end
    end
    if(c>=1) then
        printf("system is unstable");
        else 
        printf("system is stable");
    end
    x=roots(p);