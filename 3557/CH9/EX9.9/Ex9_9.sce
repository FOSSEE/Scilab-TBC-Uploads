//Example 9.9//
xl=12.6;//wt % //liquid solution composition
xa=1.6;//wt %// composition of two phases
x1=10;//wt % //x1 is the overall composition
xb=100;//wt %//composition of two phases
a=1;//kg
ma=((xl-x1)/(xl-xa))*a
mprintf("ma = %f  kg ",ma)
b=10^3;//g //As 1kg = 10^3grams
ma2=ma*b
mprintf("\nma2= %i g",ma2)

//At 576degree C, the overall microstructure is alpha+beta, the amount of each are
ma1=((xb-x1)/(xb-xa))*a
mprintf("\nma1 = %f kg ",ma1)
ma3=ma1*b
mprintf("\nma3= %i g",ma3)
mb=((x1-xa)/(xb-xa))*a
mprintf("\nmb = %f kg  ",mb)
mb1=mb*b
mprintf("\nmb1= %i g",mb1)
ae= ma3-ma2
mprintf("\nae = %i g",ae)
a1=0.016;//wieght fraction
a2=1.000;//wieght fraction
si1=(a1)*(ma2)
mprintf("\nsi1 = %f g",si1)
si2=(a1)*(ae)
mprintf("\nsi2 = %f g",si2)
si3=(a2)*(mb1)
mprintf("\nsi3 = %i g",si3)
