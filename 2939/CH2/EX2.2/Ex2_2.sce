
//Ex2_2

clc;

// Given:
// (a) Be(8)= 2 He(4)
// (b) Kr(80)= 2 Ar(40)
// (c) Cd(108)= 2 Cr(54)


// Solution:
m1=8.0053-2*4.00260;
m2=79.81638-2*39.96238;
m3=107.90418-2*53.93888;


if m1>0 then
    printf("\n Case (a) Fission is possible since m1= %f",m1)
else
    printf("\n Case (a) Fission is not possiblesince m1= %f",m1)
end

if m2>0 then
  printf("\n Case (b) Fission is possible since m2= %f",m2)
 else
    printf("\n Case (b) Fission is not possible since m2= %f",m2)
end 
 
if m3>0 then
    printf("\n Case (c) Fission is possible since m3= %f",m3)
else
    printf("\n Case (c) Fission is not possible since m3= %f",m3)
end
