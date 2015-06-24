//Page Number: 11.28
//Example 11.27
clc;
//As Kraft inequlity
//K=summation(2^(-n))
//where i from 0 to 4
//As i=1,2,3,4
//Given

//For Code A
na=[2 2 2 2];
KA=0;
for i=1:4
    KA=KA+(2^(-na(i)));
end
disp(KA,'For Code A:');

//For Code B
nb=[1 2 2 3];
KB=0;
for i=1:4
    KB=KB+(2^(-nb(i)));
end
disp(KB,'For Code B:');

//For Code C
nc=[1 2 3 3];
KC=0;
for i=1:4
    KC=KC+(2^(-nc(i)));
end
disp(KC,'For Code C:');

//For Code D
nd=[1 3 3 3];
KD=0;
for i=1:4
    KD=KD+(2^(-nd(i)));
end
disp(KD,'For Code D:');

//All codes except Code B satisfy Kraft inequality
