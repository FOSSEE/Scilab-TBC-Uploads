// Scilab code Exa18.4 : : Page-764 (2011)
clc;clear;
p = rand(1,3);            // proton
pi_minus = rand(1,3);     // pi minus meson
pi_plus = rand(1,3);      // pi plus meson
pi_0 = rand(1,3);         // pi zero meson
n = rand(1,3);            // neutron
lambda_0 = rand(1,3);     // lambda zero hyperon
K_0 = rand(1,3);          // k zero meson
K_plus = rand(1,3);       // k plus meson
K_0_bar = rand(1,3);      // anti particle of k zero
sigma_plus = rand(1,3);   // sigma hyperon
// Now in the following steps we allocated the value of charge(Q),baryon number(B) and strangeness number (S) 
p(1,1) = 1;
p(1,2) = 1;
p(1,3) = 0;
pi_minus(1,1) = -1;
pi_minus(1,2) = 0;
pi_minus(1,3) = 0;
pi_plus(1,1) = 1;
pi_plus(1,2) = 0;
pi_plus(1,3) = 0;
n(1,1) = 0;
n(1,2) = 1;
n(1,3) = 0;
lambda_0(1,1) = 0;
lambda_0(1,2) = 1;
lambda_0(1,3) = -1;
K_0(1,1) =0 ;
K_0(1,2) = 0 ;
K_0(1,3) = 1;
K_plus(1,1) = 1;
K_plus(1,2) = 0 ;
K_plus(1,3) = 1;
sigma_plus(1,1) = 1;
sigma_plus(1,2) =  1;
sigma_plus(1,3) = -1;
K_0_bar(1,1) = 0;
K_0_bar(1,2) = 0;
K_0_bar(1,3) = -1;
pi_0(1,1)  = 0;
pi_0(1,2)  = 0;
pi_0(1,3)  = 0;
j = 0;
k = 0;
printf("\n  Reaction I \n         pi_plus + n ......> lambda_0 + K_plus")
for i = 1:3
    if pi_plus(1,i)+n(1,i) == lambda_0(1,i)+K_plus(1,i) then
     j = j+1;
    else
     printf("\n Reaction I is forbidden")
     if i == 1 then
         printf("\n Delta Q is not zero")
      elseif i == 2 then
         printf("\n Delta B is not zero")
        elseif i == 3 then
         printf("\n Delta S is not zero")
      end                  
   end       
end    

if j==3 then
    printf("\n Reaction I is allowed ");
   printf("\n Delta Q is zero \n Delta B is zero \n Delta S is zero")
end  
printf("\n  Reaction II \n         pi_plus + n ......> K_0 + K_plus")
j = 0;
for i = 1:3
    if pi_plus(1,i)+n(1,i) == K_0(1,i)+K_plus(1,i) then
     j = j+1;
    else
     printf("\n Reaction II is forbidden")
     if i == 1 then
         printf("\n Delta Q is not zero")
      elseif i == 2 then
         printf("\n Delta B is not zero")
        elseif i == 3 then
         printf("\n Delta S is not zero")
      end                  
   end       
end    

if j==3 then
    printf("\n Reaction II is allowed ");
   printf("\n Delta Q is zero \n Delta B is zero \n Delta S is zero")
end  
j = 0;
printf("\n  Reaction III \n         pi_plus + n ......> K_0_bar + sumison_plus")
for i = 1:3
    if pi_plus(1,i)+n(1,i) == K_0_bar(1,i)+sigma_plus(1,i) then
     j = j+1;
    else
     printf("\n Reaction III is forbidden")
     if i == 1 then
         printf("\n Delta Q is not zero")
      elseif i == 2 then
         printf("\n Delta B is not zero")
        elseif i == 3 then
         printf("\n Delta S is not zero")
      end                  
   end       
end    

if j==3 then
    printf("\n Reaction III is allowed ");
   printf("\n Delta Q is zero \n Delta B is zero \n Delta S is zero")
end  
j = 0;
printf("\n  Reaction IV \n         pi_plus + n ......> pi_minus  + p")
for i = 1:3
    if pi_plus(1,i)+n(1,i) == pi_minus(1,i)+p(1,i) then
     j = j+1;
    else
     printf("\n Reaction IV is forbidden")
     if i == 1 then
         printf("\n Delta Q is not zero")
      elseif i == 2 then
         printf("\n Delta B is not zero")
        elseif i == 3 then
         printf("\n Delta S is not zero")
      end                  
   end       
end    

if j==3 then
    printf("\n Reaction IV is allowed ");
   printf("\n Delta Q is zero \n Delta B is zero \n Delta S is zero")
end  
j = 0;
printf("\n  Reaction V \n         pi_minus + p ......> lambda_0  + K_0")
for i = 1:3
    if pi_minus(1,i)+p(1,i) == lambda_0(1,i)+K_0(1,i) then
     j = j+1;
    else
     printf("\n Reaction V is forbidden")
     if i == 1 then
         printf("\n Delta Q is not zero")
      elseif i == 2 then
         printf("\n Delta B is not zero")
        elseif i == 3 then
         printf("\n Delta S is not zero")
      end                  
   end       
end    

if j==3 then
    printf("\n Reaction V is allowed ");
   printf("\n Delta Q is zero \n Delta B is zero \n Delta S is zero")
end  
j = 0;
printf("\n  Reaction VI \n         pi_plus + n ......> lambda_0  + K_plus")
for i = 1:3
    if pi_minus(1,i)+p(1,i) == pi_0(1,i)+lambda_0(1,i) then
     j = j+1;
    else
     printf("\n Reaction VI is forbidden")
     if i == 1 then
         printf("\n Delta Q is not zero");
      elseif i == 2 then
         printf("\n Delta B is not zero")
        elseif i == 3 then
         printf("\n Delta S is not zero")
      end                  
   end       
end    

if j==3 then
    printf("\n Reaction VI is allowed ");
   printf("\n Delta Q is zero \n Delta B is zero \n Delta S is zero");
end
  
// Result
// Reaction I 
 //        pi_plus +   n ......> lambda_0  + K_plus
// Reaction I is allowed 
// Delta Q is zero 
// Delta B is zero 
// Delta S is zero
//  Reaction II 
 //        pi_plus +   n ......> K_0  + K_plus
//  Reaction II is forbidden
// Delta B is not zero
// Reaction II is forbidden
// Delta S is not zero
//  Reaction III 
//         pi_plus +   n ......> K_0_bar  + sumison_plus
// Reaction III is forbidden
// Delta S is not zero
//  Reaction IV 
//         pi_plus +   n ......> pi_minus  + p
// Reaction IV is forbidden
// Delta Q is not zero
//  Reaction V 
//         pi_minus +   p ......> lambda_0  + K_0
// Reaction V is allowed 
// Delta Q is zero 
// Delta B is zero 
// Delta S is zero
//  Reaction VI 
//         pi_plus +   n ......> lambda_0  + K_plus
// Reaction VI is forbidden
// Delta S is not zero 