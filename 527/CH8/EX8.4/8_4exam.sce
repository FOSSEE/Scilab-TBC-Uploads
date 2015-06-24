//Engineering and Chemical Thermodynamics
//Example 8.4
//Page no :371

clear ; clc ;
//Given 
P_a_sat = 0.53 ;  //[bar]
P_b_sat = 0.16 ; //[bar]
X = 1/3 ;
Y = 1- X ;
x_a_feed = 0.5 ;
x_b_feed = 0.5 ;
a = Y * -(x_a_feed + x_b_feed) + Y^2 ;
b = X * Y *(P_a_sat + P_b_sat) - (x_a_feed * P_b_sat + x_b_feed * P_a_sat)*X ;
c =  P_a_sat * P_b_sat * X^2;

k=poly(0,'k');
P = c + b*k^1 + a*k^2 ;
M = roots(P);

disp(" Example: 8.4   Page no : 371") ;
for i = 1:2
    sign(M(i,1)) ;
        if ans == 1 then
          printf("\n\n     Pressure  = %.2f bar",M(i,1)) ;  
          Xa = x_a_feed / (P_a_sat / M(i,1) * X + Y) ;//....E8.4D
          Ya = Xa * P_a_sat / M(i,1)  ;//.....E8.4B
          printf("\n\n       Xa = %.2f \n       Ya = %.2f\n",Xa,Ya);
        end
end
