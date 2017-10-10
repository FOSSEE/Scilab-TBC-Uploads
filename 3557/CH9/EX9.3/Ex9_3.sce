//Example 9.3//

xss=66;//wt % //solid solution composition
xL=18;//wt % //liquid solution composition
x=50;//x is overall composition
a=1;//kg //weight of alloy
mL=((xss-x)/(xss-xL))*a;
mprintf("mL = %f kg ",mL)
b=10^3;//grams ////As 1kg= 10^3grams
mL1=mL*b
mprintf("\nmL1= %i g",mL1)
mss=((x-xL)/(xss-xL))*a
mprintf("\nmss = %f kg ",mss)
mss1=mss*b //As 1kg= 10^3grams
mprintf("\nmss1=%i g",mss1)
    
