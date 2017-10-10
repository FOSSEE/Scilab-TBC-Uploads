//Chapter 1 Example 1
//Daily Variation of Load
L = [1 0 6 4
     2 6 9 8
     3 9 11 12
     4 11 14 18
     5 14 18 15
     6 18 20 12
     7 20 22 8
     9 22 24 4];
     
t_int = length(L(:,1));     

//Calculate the energy
energy = 0;
for i = 1:t_int
    energy = energy + (L(i,3) - L(i,2))*L(i,4); 
end
davg = energy/24;      ///Daily Average power
mload = max(L(:,4));   ///Max Load
LF = davg/mload;       ///Load Factor
plot2d2(L(:,2), L(:,4));
title('Daily Load Curve')
xlabel('Time in hours')
ylabel('Load in  MW')
