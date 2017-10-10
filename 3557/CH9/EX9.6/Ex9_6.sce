    //Example 9.6//
//(a)
x1=70;//wt % //x1 is the overall composition
xa=30;//wt % //composition of two phases
xb=90;//wt % //composition of two phases
xl=60;//wt %//
a=1;//kg
mb1=((x1-xa)/(xb-xa))*a
mprintf("mb1 = %f kg ",mb1)
b=10^3;//g//As 1kg = 10^3grams
mb3=mb1*b////As 1kg = 10^3grams
mprintf("\nmb1= %i g",mb3)
mb2=((x1-xl)/(xb-xl))*a
mprintf("\n mb2 = %f kg ",mb2)
mb4=mb2*b//As 1kg = 10^3g
mprintf("\nmb4= %i g",mb4)
fp=mb4/mb3
mprintf("\n fp =%f ",fp)

