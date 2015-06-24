s=%s
p= poly([0 0 50],'s','coeff');
q= poly([0.1 2 10],'s','coeff');
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
     Ess =1/ H*(1 -(b(1 ,1)*H/a(1 ,1)))*R
disp (Ess ," f o r u n i t s t e p input Ess=")
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
Ess =(a(1 ,2) -b(1 ,2)*H)/a(1 ,1)*H
disp (Ess ," for unit ramp input Ess=")
 else printf (" for unit ramp input Es s=infinite\n")
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
printf (" f o r u n i t p a r a b o l i c input Es s=0 \n")
 else if(c ==2) then
Ess =(a(1 ,3) -b(1 ,3)*H)/a(1 ,1)*H
 disp (Ess ," for unit parabolic input Ess=")
 else printf (" for unit parabolic  input Ess=infinite \n")
 end
 end
