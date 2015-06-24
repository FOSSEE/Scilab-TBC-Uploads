//===========================================================================
//chapter 1 example 6

clc;
clear all;

//intercepts given are 3a,3b,2c
//from the law of rational indices
//3a:3b:2c=a/h:b/k:c/l
//variable declaration

h1 = 1/4;               //miller indices
k1 = 1/4;               //miller indices
l1 = 1/2;               //miller indices
h12 = 1/2;                    //miller indices
k12 = 1;                    //miller indices
l12 = 1/%inf;               //miller indices
h13 = 1;
k13 = 2;
l13 = 1;


//calculation
p = int32([4,4,2]);
l2 = lcm(p);
h=h1*double(l2);
k=(k1)*double(l2);
l=(l1)*double(l2);

p1 = int32([2,1,1]);

// 1/%inf = 0  ; (1/2 1/1 0/1) hence lcm is taken for [2 1 1]

l22 = lcm(p1);
h3=h12*double(l22);
k3=(k12)*double(l22);
l3=(l12)*double(l22);

p3 = int32([1,1,1]);
l23 = lcm(p3);
h4=h13*double(l23);
k4=(k13)*double(l23);
l4=(l13)*double(l23);



//result
mprintf('miller indices = %d %d %d\n',h,k,l);
mprintf('Note:printing mistake of miller indices in textbook \n');
mprintf('\nmiller indices = %d %d %d\n',h3,k3,l3);
mprintf('\nmiller indices = %d %d %d\n',h4,k4,l4);
mprintf('Note:calculation mistake in textbook\n');


//============================================================================================
