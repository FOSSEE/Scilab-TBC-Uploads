//Example 9.7//

xy=0.77;//wt % // composition of two phases
x1=0.50;//wt % //x1 is the overall composition
xa=0.02;//wt % //composition of two phases
a=1;//kg
ma=((xy-x1)/(xy-xa))*a
mprintf("ma = %f kg ",ma)
b=10^3;//grams //As 1 kg = 10^3grams
ma1=ma*b
mprintf ("\nma1= %i g",ma1)
