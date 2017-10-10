//Example 13.7//

//For 1Kg =of final product 
a=0.33;//wt % //glass fiber
b=1;//kg //kilogram
p=a*b
mprintf("p = %f kg glass",p)
p1=b-a 
mprintf("\n p1 = %f kg nylon 66",p1)
//The total volume of the product
mn=0.67;//kg //given
mg=0.33;//kg//given
pn=1.14;//Mg/m^3 //density of nylon 66
pg=2.54;//Mg/m^3 //density of reinforcing glass
c=1;//Mg //Milligram
d=1000;//kg //given
Vp=((mn/pn)+(mg/pg))*(c/d)
mprintf("\nVp = %e m^3",Vp)
//The over all density of the final product is then
p=(c/Vp)*(c/d)
mprintf("\np = %f Mg/m^3",p)


