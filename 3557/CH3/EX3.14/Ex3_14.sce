//Example 3.14 (a)//
a=2;//given
rw=0.137;//nm // atomic radius of Tungsten
r=a*rw
mprintf("r = %f nm",r)
r1=1/(r) //Taking inverse of r
mprintf("\nr1 = %f atoms/nm",r1)
//Example 3.14 (b)
b=0.143;// atomic radius of Aluminium
a1=(4*b)/(sqrt(2))  //Face centered cubic
mprintf("\n a1 = %f nm",a1)
r2=sqrt(3)*a1; //body diagonal length
mprintf("\n r2 = %f nm",r2)
r3=1/(r2); //linear density     //Taking inverse of r2 i.e body diagonal length
mprintf("\n r3 = %f atoms/nm",r3)
