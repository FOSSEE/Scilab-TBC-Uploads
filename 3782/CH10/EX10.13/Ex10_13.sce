
//

//

cb=400
rlb=250.5
pi=30
g1=-1.0
g2=0.5
g=0.1
ga=20
//a
vc=(g1-g2)/g
vc=-vc*ga
printf("\n length of vertical curve %0.3f ",vc)

//b,c
ca=cb-(0.5*vc)
cc=ca+vc

//d,e,f,g

rla=rlb+((0.5*vc)/100)

rlc=rlb+((0.5*0.5*vc)/100)

rle=0.5*(rla+rlc)

rlf=0.5*(rle+rlb)

printf("\n RL of A= %0.3f ",rla)
printf("\n RL of C= %0.3f ",rlc)
printf("\n RL of E= %0.3f ",rle)
printf("\n RL of F= %0.3f ",rlf)

//h
fp=%pi/100

rl1=rla-fp
rl2=rl1-fp
rl3=rl2-fp
rl4=rl3-fp
printf("\n RL on the grade on the side AB ')
printf("\n rl1,rl2,rl3,rl4")

//i

rp=(0.5*%pi)/100

rls4=rlb+rp
rls3=rls4+rp
rls2=rls3+rp
rls1=rls2+rp

printf("\n RL on grade on side BC')
printf("\n rls4,rls3,rls2,rls1")

//j

y1=((g1-g2)*(%pi*%pi))/(cb*0.5*vc)
y2=((g1-g2)*(2*%pi*2*%pi))/(cb*0.5*vc)
y3=((g1-g2)*(3*%pi*3*%pi))/(cb*0.5*vc)
y4=((g1-g2)*(4*%pi*4*%pi))/(cb*0.5*vc)

printf("\n tangent correction from expression ')
printf("\n y1,y2,y3,y4")
