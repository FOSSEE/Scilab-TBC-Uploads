//chapter9,Example9_5,pg 238

//for line A-> 2*d*sin(thetaA)=lamA(n=1)

thetaA=30*(%pi/180)//glancing angle for line A

//for line B-> 2*d*sin(thetaB)=3*lamB(n=3)

thetaB=60*(%pi/180)

lamB=0.97*10^-10

d=(3*lamB)/(2*sin(thetaB))

lamA=2*d*sin(thetaA)//wavelength of line A

printf("wavelength of line A\n")

disp(lamA)