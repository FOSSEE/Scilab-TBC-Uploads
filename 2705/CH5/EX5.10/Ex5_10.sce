clear;
clc;
disp('Example 5.10');

//  aim : To determine
//  the new temperature of the gas

//  Given values
V1 = .015;//  original volume,[m^3]
T1 = 273+285;//  original temperature,[K]
V2 = .09;//  final volume,[m^3]

//  solution 
//  Given gas is following the law,P*V^1.35=constant
//  so process is polytropic with
n = 1.35; // polytropic index

// hence
T2 = T1*(V1/V2)^(n-1);//  final temperature, [K]

t2 = T2-273;//  [C]

mprintf('\n The new temperature of the gas is  =  %f C \n',t2);

// there is minor error in book's answer

//  End
