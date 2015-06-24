clear ;
clc;
// Example 3.9
printf('Example 3.9\n\n');
printf('Page No. 70\n\n');

// given
P = 1;/// Principal Amount in Pound

r_i = 0.1;// Compound interest rate
for i = [1:1:4]
    c = P*(1+r_i)^i;
    printf('compound intrest after year %.0f is equal to %.2f Pound\n',i,c)
end

new_P = 1000*P;//in Pound
new_c = 1000*c;// in Pound
printf('The new amount at the compound interest after fourth year is %.0f Pound\n\n',new_c)

// Discount rate
r_d = 0.10;// Discount rate
for j= 1:1:4
    d = P*(1/(1+r_d)^j);
    printf('The amount receivable at discount in year %.0f is %.3f Pound\n',j,d)
end

new_P1 = new_c;// in Pound
new_d = new_P1*d;// in Pound
printf('The  new amount receivable at discount in fourth year is %.0f Pound\n',new_d)


