//Example 17.15//

//(a)
y1=1190;// degree C //y1 coordinate of the location where the line crosses the y axis.
y2=1414;// degree C //y2 coordinate of the location where the line crosses the y axis.
x1=99.985;;// wt % //composition of Si
x2=100; //wt % // composition of Si
a=y2-y1;//(subracting y intercept of linear euation)
//mprintf("a = %i",a)
a1=x2-x1 //(subracting m slope of line of linear equation)
//mprintf("a1 = %f ",a1)
m=a/a1; //(Obtaining m value)
mprintf("m = %e ",m)
b=y2-m*x2; //(Obtaining b value)
mprintf("\nb = %e ",b)
y3=1360;//degree C //composition
x=(y3-b)/m
mprintf("\nx = %f ",x)
//The segregation coefficienct is calculated in terms of impurity levels
Cs=x2-x
mprintf("\nCs = %f wt percent Al",Cs)
x3=90;//percent //si composition
Cl=x2-x3;
mprintf("\nCl = %i wt percent Al",Cl)
K=Cs/Cl
mprintf("\nK = %e ",K)

//(b) For the liquids line a similar staright line expression take place on the values
a4=y2-y3;//(subracting y intercept of linear euation)
//mprintf("a4 = %i",a4)
a5=x2-x3 //(subracting m slope of line of linear equation)
//mprintf("a5 = %f ",a5)
m1=a4/a5; //(Obtaining m value)
mprintf("\nm1 = %e ",m1)
b1=y2-m1*x2; //(Obtaining b value)
mprintf("\nb1 = %f ",b1)
//A 99 wt % Si bar will have a liquids temperature
x4=99;//
T=m1*(x4)+b1
mprintf("\nT = %f degree C",T)
//The corresponding solids composition is given by
x5=(T-b)/m
mprintf("\nx1 = %f wt percent Si",x1)
//An alternate composition expression
x5=99.999638;//Wt % Si
c=100;//percent
i=(x2-x5)/c
mprintf("\ni = %e Al",i)
mprintf("\nor 3.62 parts per million Al")
mprintf("\nThese calculations are susceptible to round-off errors. Values of m and bin the solidus line equation must be carried to several palces")
