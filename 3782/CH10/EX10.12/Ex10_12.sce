
//

//
pi=20
cb=550
rlb=375.5
g1=0.5
g2=-0.7
//a
vc=((g1-g2)*20)/0.1

printf("\n length of vertical curve = %0.3f ",vc)

//b,c

ca=cb-(vc/2)
cc=ca+vc
printf("\n chainage of A %0.3f ",ca)
printf("\n chainage of C %0.3f ",cc)

//d,e,f,g

rla=rlb-((g1*0.5*vc)/100)
rlc=rlb-((-g2*0.5*vc)/100)
rle=0.5*(rla+rlc)
rlf=0.5*(rlb+rle)

printf("\n Rl of A %0.3f ",rla)
printf("\n Rl of C %0.3f ",rlc)
printf("\n Rl of E %0.3f ",rle)
printf("\n Rl of F %0.3f ",rlf)
//h
tc=rlb-rlf
printf("\n tangent correction at the apex = %0.3f ",tc)

//i
tc1=((g1-g2)*(%pi*%pi))/(400*0.5*vc)
tc2=((g1-g2)*(2*%pi*2*%pi))/(400*0.5*vc)
tc3=((g1-g2)*(3*%pi*3*%pi))/(400*0.5*vc)
tc4=((g1-g2)*(4*%pi*4*%pi))/(400*0.5*vc)
tc5=((g1-g2)*(5*%pi*5*%pi))/(400*0.5*vc)
tc6=((g1-g2)*(6*%pi*6*%pi))/(400*0.5*vc)
printf("\n tangent correction at 1st,2nd,3rd,4th,5th,6th, points %0.3f %0.3f %0.3f %0.3f %0.3f %0.3f",tc1,tc2,tc3,tc4,tc5,tc6)

//j
rp=(g1*%pi)/100

rl1=rla+rp
rl2=rl1+rp
rl3=rl2+rp
rl4=rl3+rp
rl5=rl4+rp
rl6=rl5+rp
printf("\n RL of the points on grade')
printf("\n rl1,rl2,rl3,rl4,rl5,rl6")

//k
rlc1=rl1-tc1
rlc2=rl2-(tc2)
rlc3=rl3-(tc3)
rlc4=rl4-(tc4)
rlc5=rl5-(tc5)
rlc6=rl6-(tc6)

printf("\n RL of the points on curve')
printf("\n rlc1,rlc2,rlc3,rlc4,rlc5,rlc6")

//l

fp=0.14

rlg5=rlb-fp
rlg4=rlg5-fp
rlg3=rlg4-fp
rlg2=rlg3-fp
rlg1=rlg2-fp

printf("\n Rls of points on the grade right side')
printf("\n rlg5,rlg4,rlg3,rlg2,rlg1")
