clc;
clear;
function y=f(x)
    y=x^5-3.5*x^4+2.75*x^3+2.125*x^2-3.875*x+1.25
endfunction
r=-1;
s=-1;
es=1;//%
n=6;
count=1;
ear=100;
eas=100;
a=[1.25 -3.875 2.125 2.75 -3.5 1];
while (ear>es) and (eas>es)
  
    b(n)=a(n);
    b(n-1)=a(n-1)+r*b(n);
    for i=n-2:-1:1
        b(i)=a(i)+r*b(i+1)+s*b(i+2);
    end
    c(n)=b(n);
    c(n-1)=b(n-1)+r*c(n);
    for i=(n-2):-1:2
        c(i)=b(i)+r*c(i+1)+s*c(i+2);
    end
    //c(3)*dr+c(4)*ds=-b(2)
    //c(2)*dr+c(3)*ds=-b(1)
    ds=((-b(1))+(b(2)*c(2)/c(3)))/(c(3)-(c(4)*c(2    )/c(3)));
    dr=(-b(2)-c(4)*ds)/c(3);
    r=r+dr;
    s=s+ds;
    ear=abs(dr/r)*100;
    eas=abs(ds/s)*100;
    disp(count,"Iteration:")
    disp(dr,"delata r:")
    disp(ds,"delata s:")
    disp(r,"r:")
    disp(s,"s:")
    disp(ear,"Error in r:")
    disp(eas,"Error in s:")
    disp("-----------------------------------------------------")
    count=count+1;
end
x1=(r+(r^2 + 4*s)^0.5)/2;
x2=(r-(r^2 + 4*s)^0.5)/2;
bracket=[x1 x2];
disp(bracket,"The roots are:")
disp("x^3 - 4*x^2 + 5.25*x - 2.5","The quotient is:")
disp("-----------------------------------------------------")
