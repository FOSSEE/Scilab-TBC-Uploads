

//
//given

BB_AB=13+(0/60)
BB_BC=222+(30/60)
BB_CD=200+(30/60)
BB_DE=62+(45/60)
BB_EA=147+(45/60)

FB_AB=191+(45/60)
FB_BC=39+(30/60)
FB_CD=22+(15/60)
FB_DE=242+(45/60)
FB_EA=330+(15/60)

//(a)
interiorA=FB_AB-BB_EA
interiorB=FB_BC-BB_AB
exteriorC=BB_BC-FB_CD
interiorC=360-(200+(15/60))
interiorD=FB_DE-BB_CD
interiorE=FB_EA-BB_DE

//convert into mins and degrees
deg1=int(interiorA)
mins1=int((interiorA-deg1)*60)
deg2=int(interiorB)
mins2=int((interiorB-deg2)*60)
deg3=int(exteriorC)
mins3=int((exteriorC-deg3)*60)
deg4=int(interiorC)
mins4=int((interiorC-deg4)*60)
deg6=int(interiorD)
mins6=int((interiorD-deg6)*60)
deg7=int(interiorE)
mins7=int((interiorE-deg7)*60)

n=5
check=(2*n-4)*90
summ=interiorA+interiorB+interiorC+interiorD+interiorE

printf("\n Interior angle A= %0.3f degrees %0.3f minutes",deg1,mins1)
printf("\n Interior angle B= %0.3f degrees %0.3f minutes",deg2,mins2)
printf("\n exterior angle C= %0.3f degrees %0.3f minutes",deg3,mins3)
printf("\n Interior angle C= %0.3f degrees %0.3f minutes",deg4,mins4)
printf("\n Interior angle D= %0.3f degrees %0.3f minutes",deg6,mins6)
printf("\n Interior angle E= %0.3f degrees %0.3f minutes",deg7,mins7)
printf("\n %0.3f degrees %0.3f degrees ",check,summ)
//(b)
printf("\n %0.3f correct  %0.3f correct ", FB_DE,FB_EA)


AB=FB_EA-180+interiorA
BC=(194+(15/60))-180+interiorB
CD=(40+(45/60))+180-exteriorC
DE=(20+(30/60))+180+interiorD

deg1=int(AB)
mins1=int((AB-deg1)*60)
deg2=int(BC)
mins2=int((BC-deg2)*60)
deg3=int(CD)
mins3=int((CD-deg3)*60)
deg4=int(DE)
mins4=int((DE-deg4)*60)

printf("\n corrected values are:")
printf("\n FB_AB= %0.3f degrees %0.3f minutes",deg1,mins1)
printf("\n FB_BC= %0.3f degrees %0.3f minutes",deg2,mins2)
printf("\n FB_CD= %0.3f degrees %0.3f minutes",deg3,mins3)
printf("\n FB_DE= %0.3f degrees %0.3f minutes",deg4,mins4)
