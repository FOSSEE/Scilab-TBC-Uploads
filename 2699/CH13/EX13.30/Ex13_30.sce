//Ex13_30 PG-13.16
clc
clear
printf("\n Conversion of decimal number 22.64 to its hexadecimal equivalent \n ")
a=22.64;
z=modulo(a,1)
x=floor(a);//separating the decimal from the integer part
b=dec2hex(x)

//converting the decimal part of the number into hexadecimal
    z=z*16;
    q=floor(z);
       if  (q==10)  
        a1=['A']
 else   if (q==11)
        a1=['B']   
 else  if (q==12)
        a1=['C']
 else   if (q==13)
        a1=['D']
 else    if (q==14)
        a1=['E']
 else   if (q==15)
        a1=['F']       
       else a1=q   
end 
end
end
end
end
end
if z>=1 then
        z=z-q;
end  

   z=z*16;
    q=floor(z);
       if  (q==10)  
        a2=['A']
 else   if (q==11)
        a2=['B']   
 else  if (q==12)
        a2=['C']
 else   if (q==13)
        a2=['D']
 else    if (q==14)
        a2=['E']
 else   if (q==15)
        a2=['F']       
       else a2=q   
end 
end
end
end
end
end
if z>=1 then
        z=z-q;
end  

   z=z*16;
    q=floor(z);
       if  (q==10)  
        a3=['A']
 else   if (q==11)
        a3=['B']   
 else  if (q==12)
        a3=['C']
 else   if (q==13)
        a3=['D']
 else    if (q==14)
        a3=['E']
 else   if (q==15)
        a3=['F']       
       else a3=q   
end 
end
end
end
end
end
if z>=1 then
        z=z-q;
end  

   z=z*16;
    q=floor(z);
       if  (q==10)  
        a4=['A']
 else   if (q==11)
        a4=['B']   
 else  if (q==12)
        a4=['C']
 else   if (q==13)
        a4=['D']
 else    if (q==14)
        a4=['E']
 else   if (q==15)
        a4=['F']       
       else a4=q   
end 
end
end
end
end
end
if z>=1 then
        z=z-q;
end  
printf("The hexadecimal equivalent of the given decimal number 22.64 is:")
printf(" %s.%s%.0f%s%.0f",b,a1,a2,a3,a4);
