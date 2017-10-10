clear;
clc;
//case1
V2=2300;
S=150;
V1=11500+V2;
a=(V1-V2)/V2; //two winding transformer ratio

aa=a+1; //autotransformer ratio
output=((1+a)/a)*S;
mprintf("output for 1 case %f KVA\n",output);
//case 2
V11=13.8;
V22=11.5;
a1=(V11-V22)/V22;

output1=((1+a1)/a1)*S;
mprintf("output for 2 case %f KVA\n",output1);

