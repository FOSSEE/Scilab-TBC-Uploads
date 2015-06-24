clc
disp("Example 3.34")
printf("\n")
disp("Obtain the Common base current gain & output characteristics")
printf("Given\n")
Vcb=[ 4 4 4 4 4 4 ]
Ic=[ 0 2 4 6 8 10]
subplot(221)
plot2d(Vcb,Ic)
xlabel("Vcb in volt")
ylabel("Ic in Ampere")
xtitle("output characteristics")
Ic1=[0 2 10 ]
Ie=[0 2 10 ]
subplot(222)
plot2d(Ie,Ic1)
xarrows(Ie,Ic1,2,2)
xarrows(Ie,Ic1,10,10)
xlabel("Vcb in volt")
ylabel("Ic in Ampere")
xtitle("current gain characteristics")
