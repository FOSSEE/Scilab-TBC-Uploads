
//example 5-3 in page 124
clc;
// Given data
// 3(1/2) digit display
If1=20e-3;//forward current per segment of led=20 mA
If2=300e-6;//forward current per segment of lcd
//calculations
for n=1:2
    if n==1
       I=If1;
       else I=If2;
    end
    It=3*7*I+2*I;// each digit has 7 segments and there are three digits with a half digit that has 2 segments
    printf("case %d,\n Total current=%.0f mA\n",n,It*1000);
end
//result
// case 1,
//Total current=0.460000 A
//case 2,
//Total current=0.006900 A
 