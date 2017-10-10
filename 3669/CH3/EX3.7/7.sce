//Variable declaration
h=1;
k=1;
l=0;
d=0.203*10**-9;    //spacing(m)

//Calculation
a=d*sqrt(h**2+k**2+l**2);    //length of unit cell(m)
V=a**3;    //volume of unit cell(m**3)
r=sqrt(3)*a/4;    //radius of the atom(m)

//Result
printf('length of unit cell is %0.3f   *10**-9 m  \n',(a*10**9))
printf('volume of unit cell is %0.3f  *10**-27 m**3   \n',(V*10**27))
printf('radius of the atom is %0.3f  *10**-9 m   \n',(r*10**9))