clc;
clear;
response=1;
while response==1
a=input("Input the value of a:")
b=input("Input the value of b:")
c=input("Input the value of c:")
if a==0 then
    if b~=0 then
        r1=-c/b;
        disp(r1,"The root:")
    else disp("Trivial Solution.")
    end
else 
    discr=b^2-4*a*c;
    if discr>=0 then
        r1=(-b+sqrt(discr))/(2*a);
        r2=(-b-sqrt(discr))/(2*a);
        disp(r2,"and",r1,"The roots are:")
    else
        r1=-b/(2*a);
        r2=r1;
        i1=sqrt(abs(discr))/(2*a);
        i2=-i1;
        disp(r2+i2*sqrt(-1),r1+i1*sqrt(-1),"The roots are:")
    end
end
response=input("Do you want to continue (press 1 for yes and 2 for no)?")
if response=2 then exit;
end
end
end