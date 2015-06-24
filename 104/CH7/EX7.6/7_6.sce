//steady state errors from closed loop transfer functions
s=%s
p=poly([5 1 0],'s','coeff');
q=poly([10 10 60 17 1],'s','coeff');
M=p/q
disp(M,"M(s)=")
H=2;
R=1;
b=coeff(p)
a=coeff(q)

//step input
if (a(1,1)==b(1,1)) then
    printf("for step input Ess=0 \n" )
else 
    Ess=1/H*(1-(b(1,1)*H/a(1,1)))*R
    disp(Ess,"for step input Ess=")
end

//ramp input
c=0
for i=1:2
    if(a(1,i)-b(1,i)*H==0) then
        c=c+1
    end
end
if(c==2)
        printf("for ramp input Ess=0 \n")
    else if(c==1) then
            Ess=(a(1,2)-b(1,2)*H)/a(1,1)*H
            disp(Ess,"for ramp input Ess=")
        else printf("for ramp input Ess=inf \n")
     end 
 end

//parabolic input
c=0
for i=1:3
    if(a(1,i)-b(1,i)*H==0) then
        c=c+1
    end
end
if(c==3)
        printf("for parabolic input Ess=0 \n")
    else if(c==2) then
            Ess=(a(1,3)-b(1,3)*H)/a(1,1)*H
            disp(Ess,"for parabolic input Ess=")
        else printf("for parabolic input Ess=inf \n")
     end 
 end