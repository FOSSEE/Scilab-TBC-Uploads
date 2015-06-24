//desing right angled bell crank lever
clc
//soltuion
//given
//ref fig 15.14
FB=500//mm
W=4500//N
FA=150//mm
ft=75//N/mm^2
t=60//N/mm^2
pb=10//N/mm^2
P=(W*500)/150//N
Rf=sqrt(P^2 + W^2)//N
//desing of uflcrum pin
//let d be dia and l be thickness of fulcrum
//l=1.25d
//P=d*l*pb=12.5*d^2
//d=sqrt(P/12.5)//mm
printf("the diameter is,%f mm\n",sqrt(P/12.5))
printf("the dia is say,d=36mm\n")
d=36//mm
l=1.25*d//mm
printf("the length of fulcrum pin is,%f \n",l)
d1=d+ 2*3
printf("the dia of hole in leverr is,%f mm\n",d1)
printf("the dia of boss at fulcrum is,%f mm\n",2*d)
printf("the bending moment at fulcrum is,%f N-mm\n",W*FB)
//design of pin at A
//since force acting at A is not very much different from rxn at fulcrum ,therfore same dimenion of pin and boss may be used as for fulcrum pin
da=36//mm
la=45//mm
dba=72//mm
printf("diameter,length and dia of boss at A is ,%f mm\n,%f mm\n,%f mm\n",da,la,dba)
//desig of pin at B
//let db and lb be dia and length
//W=db*lb*pb
//lb=1.25db
//w=12.5 *db^2
db=sqrt(W/12.5)
lb=1.25*db
printf("the dia and length at B is,%f mm\n,%f mm\n",db,lb)
printf("the inner dia is,%f mm\n",db+6)
printf("the outer dia is,%f mm\n",2*db)
//desig of lever
//let tl and bl be thioknes and dia at lever
//bl=3tl
Ml=4500*(500-50)//N-mm
//Z=(1/6)*t*b^2=1.5*t^3
//ft=Ml/Z
tl=(Ml/(1.5*75))^(1/3)//mm
printf("the thcikness and width of lever is,%f mm\n,%f mm\n ",tl,3*tl)

