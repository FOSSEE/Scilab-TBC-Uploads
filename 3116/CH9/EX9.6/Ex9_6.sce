

clc
// given that
n=[0 1 2 3 4 5]
T_S=[510 520 512 515 522 530]

printf(" Example 9.6 \n")

//First and Last points are arbitrary to plot the required points

printf("\n Part A:")
plot(n,T_S,'+')
xtitle('Tensile strength data','Sample no.','Tensile strength');

//Mean Tensile strength
i=2;
TS_mean=0;

for i=2:5
    TS_mean=TS_mean+(T_S(i)/4);
end
printf("\n Average tensile strength is %d MPa.\n",TS_mean);
//Standard Deviation
printf("\n\n Part B:")
j=0
std=0

for i=2:5
    std=std+((T_S(i)-TS_mean)^2/(4-1))
end

printf("\n Standard deviation is %.1f MPa\n",sqrt(std))

