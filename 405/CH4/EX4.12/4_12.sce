clear;
clc;
printf("\t\t\tExample Number 4.12\n\n\n");
// implicit formulation
// Example 4.12 (page no.-173-174)
// solution

// we are using the data of example 4.11 for this question
// we are inserting the value of Rij in equation (4-43) to write the nodal equations for the end of the first time increment, taking all T1^(p) = 200 degree celsius
// we use underscore to designate the temperatures at the end of the time increment. for node 1
// 0.05302*T1_ = 200/70.731+T2_/70.731+40/84.833+0.01296*200
// for node 2
// 0.05302*T2_ = T1_/70.731+T3_/70.731+40/84.833+0.01296*200
// for node 3 and 4,
// 0.05302*T3_ = T2_/70.731+T4_/70.731+40/84.833+0.01296*200
// 0.02686*T4_ = T3_/70.731+40/2829+40/169.77+0.00648*200
// these equations can then be reduced to
// 0.05302*T1_-0.01414*T2_ = 5.8911
// -0.01414*T1_+0.05302*T2_-0.01414*T3_ = 3.0635
// -0.01414*T2_+0.05302*T3_-0.01414*T4_ = 3.0635
// -0.01414*T3_+0.02686*T4_ = 1.5457
// These equations can be solved by matrix method 
Z = [0.05302 -0.01414 0 0;-0.01414 0.05302 -0.01414 0;0 -0.01414 0.05302 -0.01414;0 0 -0.01414 0.02686];
C = [5.8911;3.0635;3.0635;1.5457];
T_ = Z^(-1)*C;
T1_ = T_(1);// [degree celsius]
T2_ = T_(2);// [degree celsius]
T3_ = T_(3);// [degree celsius]
T4_ = T_(4);// [degree celsius]
// we can now apply the backward-difference formulation a second time using the double underscore to designate the temperatures at the end of the second time increment:
// 0.05302*T1__ = 200/70.731+T2__/70.731+40/84.833+0.01296*145.81
// 0.05302*T2__ = T1__/70.731+T3__/70.731+40/84.833+0.01296*130.12
// 0.05302*T3__ = T2__/70.731+T4__/70.731+40/84.833+0.01296*125.43
// 0.02686*T4__ = T3__/70.731+40/2829+40/169.77+0.00648*123.56
// These equations can be solved by matrix method
X = [0.05302 -0.01414 0 0;-0.01414 0.05302 -0.01414 0;0 -0.01414 0.05302 -0.01414;0 0 -0.01414 0.02686];
V = [5.1888;2.1578;2.0970;1.0504];
T__ = X^(-1)*V;
T1__ = T__(1);// [degree celsius]
T2__ = T__(2);// [degree celsius]
T3__ = T__(3);// [degree celsius]
T4__ = T__(4);// [degree celsius]
printf(" temperatures after time increment 1 are:");
printf("\n\n\t\t T1'' == %f",T1_);
printf("\n\n\t\t T2'' == %f",T2_);
printf("\n\n\t\t T3'' == %f",T3_);
printf("\n\n\t\t T4'' == %f",T4_);
printf("\n\n temperatures after time increment 2 are:");
printf("\n\n\t\t T1'''' == %f",T1__);
printf("\n\n\t\t T2'''' == %f",T2__);
printf("\n\n\t\t T3'''' == %f",T3__);
printf("\n\n\t\t T4'''' == %f",T4__);

