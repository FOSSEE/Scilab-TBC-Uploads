clear;
clc;

// Example 2.10
// Page no. 64
// Solution

// Given
// Process a 
// Let us take array of given values for compounds in following order 1- acetone, 2 - Hydrogen cyanide, 3- methanol, 4-Sulphuric acid , 5 - Methyl methacrylate
Lb1  =  [0.68,0.32,0.37,1.63,1]  ;// Mass of compounds -[lb]
Value1  =  [0.43, 0.67,0.064,0.04,0.78] ;// Cost of compounds -[$/lb]
TLV1  =  [750,10,200,2,100] ;// TLV value of compounds -[ppm]
OITF1  =  [0,1000,10,10000,10] ;// Note : (?) mark values are neglected as they are nearly equal to zero 

// Process b
// Let us take array of given values for compounds in following order 1- Isobutylene, 2 - Methanol, 3- Pentane, 4-Sulphuric acid , 5 - Methyl methacrylate
Lb2  =  [1.12,0.38,0.03,0.01,1.00]  ;// Mass of compounds -[lb]
Value2  =  [0.31,0.64,0.112,0.04,0.78] ;// Cost of compounds -[$/lb]
TLV2  =  [200,200,600,2,100] ;// TLV value of compounds -[ppm]
OITF2  =  [0,10,0,10000,10] ;// Note : (?) mark values are neglected as they are nearly equal to zero 

NetV1  =  Lb1(5)*Value1(5) - Lb1(2)*Value1(2) - Lb1(3)*Value1(3) - Lb1(4)*Value1(4) - Lb1(1)*Value1(1); // Net Value for process (a) -[$]
NetV2  =  Lb2(5)*Value2(5) - Lb2(2)*Value2(2) - Lb2(3)*Value2(3) - Lb2(4)*Value2(4) - Lb2(1)*Value2(1) ;// Net Value for process (b) -[$]

printf('1.With respect to cost criteria\n');
printf('  Net value for process (a) is %.2f $ and for process (b) is %.2f $.\n  Hence based on net value both process are equivalent.  \n',NetV1,NetV2);

// With respect to two environmental criteria
TLV_index1  =  Lb1(1)/TLV1(1) + Lb1(2)/TLV1(2)  + Lb1(3)/TLV1(3) + Lb1(4)/TLV1(4) + Lb1(5)/TLV1(5) ;// TLV index for process a
OITF_index1  =  OITF1(1)*Lb1(1) +OITF1(2)*Lb1(2) + OITF1(3)*Lb1(3) + OITF1(4)*Lb1(4) + OITF1(5)*Lb1(5) ;// OITF index process a

TLV_index2  =  Lb2(1)/TLV2(1) + Lb2(2)/TLV2(2)  + Lb2(3)/TLV2(3) + Lb2(4)/TLV2(4) + Lb2(5)/TLV2(5) ;// TLV index for process b
OITF_index2  =  OITF2(1)*Lb2(1) +OITF2(2)*Lb2(2) + OITF2(3)*Lb2(3) + OITF2(4)*Lb2(4) + OITF2(5)*Lb2(5) ;// OITF index process b

printf('\n 2.With respect to  two environmental criteria\n');
printf('   Process (a)\n   TLV index for process a is %.2f .\n   OITF index process a is %.2f .  \n',TLV_index1,OITF_index1);
printf('   \n   Process (b)\n   TLV index for process b is %.2f .\n   OITF index process b is %.2f .  \n',TLV_index2,OITF_index2);