//chapter-8,Example8_3,pg 258

//assume no iron loss and magnetizing current=1% of 10A, i.e 0.01A

Xs=1.884//reactance of secondary

Rs=0.5//resistance of secondary

Xm=20//reactance of meter

Rm=0.4//reactance of meter

B=atan((Xs+Xm)/(Rs+Rm))

B=B*(180/%pi)//conversion into degree

Im=0.01//magnetizing current

//nominal ratio (n2/n1)=10/1

n2=10

n1=1

R=n2+((Im*sin(B))/n1)//actual impedance

R1=0.0097//practical impedance

perer=(R1/R)*100//percentage error

theta=((Im*cos(B))/n2)//phase angle

theta=theta*(%pi/180)//conversion into radian

printf("percentage error\n")

printf("perer=%.4f \n",perer)

printf("phase angle\n")

printf("theta=%.6f rad",theta)