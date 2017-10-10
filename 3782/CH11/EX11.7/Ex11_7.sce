
//

//

h1=1.48,h2=1.42,c=100,

ra1=0.77,ra2=1.60,ra3=2.43,

rb1=0.86,rb2=1.84,rb3=2.82,

a1=12.166,a2=10.5,

la=112.82,da=106.4,

lb=198.5,db=292.6,

ac=c*(ra3-ra1)*(cos(a1*(%pi/180)))*(cos(a1*(%pi/180)))
bd=c*(rb3-rb1)*(cos(a2*(%pi/180)))*(cos(a2*(%pi/180)))

printf("\n Distance AC= %0.3f ",ac)
printf("\n Distance BD= %0.3f ",bd)
lac=-ac*(cos(53.5*(%pi/180)))
tlc=la+lac
printf("\n total latitude of C= %0.3f ",tlc)

dac=ac*(sin(53.5*(%pi/180)))
da=-da
tdc=da+dac
printf("\n total depature of C= %0.3f ",tdc)

lbd=-bd*(cos(4.75*(%pi/180)))
tld=lb+lbd
printf("\n total latitude of D= %0.3f ",tld)

db=-db
ddb=-bd*(sin(4.75*(%pi/180)))
tdd=-(db+ddb)
printf("\n ddb")
printf("\n total depature of D= %0.3f ",tdd)

dx=tdc+tdd
cx=tlc-tld

CD=sqrt(dx*dx+cx*cx)
printf("\n length CD= %0.3f meters',CD)
