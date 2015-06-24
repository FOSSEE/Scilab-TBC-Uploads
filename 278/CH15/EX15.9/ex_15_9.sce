//find thickness of vessel,dia of screw,xsec of beam at A,dia of pins at C and D,dia at E and f...G and H.....xsec at E and F
clc
//soltuion
//given
//ref fig 15.24
p=0.2//N/mm^2
d=600//mm
ftc=17.5//N/mm^2
fts=52.5//N/mm^2
fcs=52.5//N/mm^2
ts=42//n/mm^2
//let t be thickness of vessel
//t=(p*d)/(2*ftc)//mm
printf("the thickness of vessel si,%f mm\n",(p*d)/(2*ftc))
printf("the thickness can not be less then 6mm,therfore we take 6 as thickness\n")
t=6//mm
//let dc be core dia
W=p*(%pi*d^2)/4//N
//let dc be core dia
//W=(%pi/4)*dc^2*fts=41.24*dc^2
dc=(W/41.24)^(0.5)//mm
printf("we shall use standard size of screw M48 with core dia 41.5mm and outer dia 48mm\n")
//let t1 be thickness and b1 be width 
//b1=2*t1
Rc=W/2//N
Rd=W/2//N
l=750//mm
M=W*l/4//N-mm
//Z=(1/6)*t1*b1^2
//Z=0.66*t1^3
//fts=M/Z
t1=(M/(52.5*0.66))^(1/3)
b1=2*t1//mm
printf("thickness and width of beamA is,%f mm\n,%f mm\n",t1,b1)
//let d1 be dia of pi at C and D
//Rc=2*(%pi/4)*d1^2*ts
d1=sqrt(Rc/66)//mm
printf("the dia of pin at C and D is,%f mm\n",d1)
printf("since load at E and F IS SAME AS THAT OF C AND D,therefr dia of pins at E and F is 21 mm\n ")
//let d2 be dia at G and H
Rg=W/2//N
//Rg=(%pi/4)*d2^2*fts
d2=(Rg/41)^(0.5)//mm
printf("the dia at G and H is,%f mm\n",d2)
//let t2 be support thickness and b2 be width of support
x=375-(300+t)
M2=Rc*x//N-mm
//b2=2t2
//Z=(1/6)*t2*b2^2=0.66t2^3
//ftc=M/Z
t2=[M2/(0.66*17.5)]^(1/3)//mm
b2=2*t2
printf("the thickness and wdth of support at E and F  is,%fmm\n,%f mm\n",t2,b2)