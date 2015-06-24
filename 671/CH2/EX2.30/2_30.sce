function p=parallel(r1,r2)
    p=r1*r2/(r1+r2)
endfunction

R=parallel(60,120)

//Mesh Analysis

A=[6,-4;-4,12]
I=inv(A)*[2.4;-3.6]
I3=I(1)-I(2)

I60=I3*120/(120+60)
disp(I60)