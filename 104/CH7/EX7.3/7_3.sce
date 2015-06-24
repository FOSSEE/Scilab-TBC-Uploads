//steady state errors from closed loop transfer functions
s=%s
p=poly([3.15 1 0],'s','coeff');//K=1
q=poly([3.15 1.75 2 1],'s','coeff');
M=p/q
disp(M,"M(s)=")
H=1;
R=1;
b=coeff(p)
a=coeff(q)

//step input
if (a(1,1)==b(1,1)) then
    printf("for unit step input Ess=0" )
else 
    Ess=1/H*(1-(b(1,1)*H/a(1,1)))*R
    disp(Ess,"for unit step input Ess=")
end

//ramp input
c=0
for i=1:2
    if(a(1,i)-b(1,i)*H==0) then
        c=c+1
    end
end
if(c==2)
        printf("for unit ramp input Ess=0")
    else if(c==1) then
            Ess=(a(1,2)-b(1,2)*H)/a(1,1)*H
            disp(Ess,"for unit ramp input Ess=")
        else printf("for unit ramp input Ess=inf")
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
        printf("for unit parabolic input Ess=0")
    else if(c==2) then
            Ess=(a(1,3)-b(1,3)*H)/a(1,1)*H
            disp(Ess,"for unit parabolic input Ess=")
        else printf("for unit parabolic input Ess=inf")
     end 
 end
        
        
        
        
        
        
        
  