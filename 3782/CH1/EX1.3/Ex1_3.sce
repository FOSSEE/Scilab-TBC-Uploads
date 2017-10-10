

clear
l1=20
e=(0.06/2)                      //consider mean elongation
l11=l1+e
ml=900
tl=(l11/l1)*ml
printf("\n true length1= %0.3f ",tl)
l2=20
e2=(0.06+0.14)/2
l21=20+e2
ml2=1575-ml

tl2=(l21/l2)*ml2
printf("\n true length 2= %0.3f ",tl2)
td=tl+tl2
printf("\n true distance= %0.3f meters ",td)
