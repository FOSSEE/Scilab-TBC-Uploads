clear ;
clc;
// Example 25.11
printf('Example 25.11\n\n');
//page no. 789
// Solution 

// Given 
H_req = 10^6 ;;// Heat requirement - [Btu]

d_N6 = 60.2 ;// Density of fuel no. 6-[lb/ft^3]
d_N2 = 58.7 ;// Density of fuel no. 2-[lb/ft^3]
S_N6 = 0.72/100 ;// Sulphur content in fuel no. 6
S_N2 = 0.62/100; //Sulphur content in fuel no. 2
lhv_N6 = 155000 ;//Lower heating value of  No.6 -[Btu/gal]
lhv_N2 = 120000 ;//Lower heating value of  No.2 -[Btu/gal]

S1 = H_req*d_N6*S_N6/lhv_N6 ;// Sulphur emmited when we use fuel NO. 6-[lb]
S2 = H_req*d_N2*S_N2/lhv_N2 ;// Sulphur emmited when we use fuel NO. 2-[lb]

printf('\n Sulphur emmited when we use fuel NO. 6 is %.2f lb.',S1 ) ;
printf('\n Sulphur emmited when we use fuel NO. 2 is %.2f lb.\n',S2 ) ;
printf('Clearly fuel no. 6 should be selected because of its low SO2 emmission.') ;