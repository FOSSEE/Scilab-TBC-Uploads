clc;
s = %s;
G = s^8+s^7+12*s^6+22*s^5+39*s^4+59*s^3+48*s^2+38*s+20;
x = routh_t(G);
disp(x);c = 0;
for i = 1:length(coeff(G))
    if(x(i,1)<0)
        c=c+1;
        end
    end
    
    if(c>=1)
        printf("poles in RHP,thus unstable");
     else printf("stable system") ;
     end      