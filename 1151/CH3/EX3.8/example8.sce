s=%s
p= poly([0 0 1],'s','coeff');
q= poly([1 2 3 2],'s','coeff');
M=p/q
 disp (M,"M( s )=")
 H =1;
 R =1;
 b= coeff (p)
a= coeff (q)
// s t e p input
if (a(1 ,1) ==b(1 ,1)) then
     printf (" f o r u n i t s t e p input Ess=0 \nn" )
 else
     Ess =1/ H*(1 -(b(1 ,1)*H/a(1 ,1)))*R;
     kp=(1-Ess)/Ess;
disp (Ess ," f o r u n i t s t e p input Ess=")
disp(kp,"Kp=")
 end
// ramp input
 c=0
 for i =1:2
if(a(1,i)-b(1,i)*H ==0) then
c=c+1
 end
end
if(c ==2)
printf (" f o r u n i t ramp input Es s=0 \nn")
else if(c ==1) then
Ess =(a(1 ,2) -b(1 ,2)*H)/a(1 ,1)*H;
kv=1/Ess;
disp (Ess ," f o r u n i t ramp input Es s=")
disp(kv,"Kv=")
 else printf (" f o r u n i t ramp input Es s=i n f \nn")
 end
 end
// p a r a b o l i c input
c=0
for i =1:3
if(a(1,i)-b(1,i)*H ==0) then
c=c+1
end
end
if(c ==3)
printf (" f o r u n i t p a r a b o l i c input Es s=0 \nn")
 else if(c ==2) then
Ess =(a(1 ,3) -b(1 ,3)*H)/a(1 ,1)*H;
ka=1/Ess;
 disp (Ess ," f o r u n i t p a r a b o l i c input Es s=")
 diisp(ka,"Ka=")
 else printf (" f o r u n i t p a r a b o l i c input Es s=i n f \nn")
 end
 end
