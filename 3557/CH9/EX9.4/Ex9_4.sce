//Example 9.4//

xfe3c=6.69;//wt % //Fe3C composition
x=0.77;//wt % //x is the overall composition
xa=0;//wt % //composition of two phases
a=1;//kg
ma=((xfe3c-x)/(xfe3c-xa))*a
mprintf("ma = %f kg ",ma)
b=10^3;//g //As 1kg = 10^3grams
ma1=ma*b
mprintf("\nma1 = %i g ",ma1)
mfe3c=((x-xa)/(xfe3c-xa))*a
mprintf("\nmfe3c = %f kg ",mfe3c)
mfe3c1=mfe3c*b
mprintf("\nmfe3c1   = %i g",mfe3c1)
