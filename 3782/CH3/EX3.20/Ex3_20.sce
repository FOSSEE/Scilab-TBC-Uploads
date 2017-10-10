

//
//given

BB_AB=248+(15/60)
BB_BC=326+(15/60)
BB_CD=46+(0/60)
BB_DE=38+(15/60)
BB_EA=147+(45/60)

FB_AB=68+(15/60)
FB_BC=148+(45/60)
FB_CD=224+(30/60)
FB_DE=217+(15/60)
FB_EA=327+(45/60)

//(a)
includedA=-FB_AB+BB_EA
includedB=-FB_BC+BB_AB
includedC=BB_BC-FB_CD
includedD=360-(171+(15/60))
exteriorD=FB_DE-BB_CD
exteriorE=FB_EA-BB_DE
includedE=360-(289+(30/60))

//convert into mins and degrees
deg1=int(includedA)
mins1=int((includedA-deg1)*60)
deg2=int(includedB)
mins2=int((includedB-deg2)*60)
deg3=int(includedC)
mins3=int((includedC-deg3)*60)
deg4=int(exteriorD)
mins4=int((exteriorD-deg4)*60)
deg5=int(includedD)
mins5=int((includedD-deg5)*60)
deg6=int(exteriorE)
mins6=int((exteriorE-deg6)*60)
deg7=int(includedE)
mins7=int((includedE-deg7)*60)

n=5
check=(2*n-4)*90
summ=includedA+includedB+includedC+includedD+includedE

printf("\n included angle A= %0.3f degrees %0.3f minutes",deg1,mins1)
printf("\n included angle B= %0.3f degrees %0.3f minutes",deg2,mins2)
printf("\n included angle C= %0.3f degrees %0.3f minutes",deg3,mins3)
printf("\n exterior angle D= %0.3f degrees %0.3f minutes",deg4,mins4)
printf("\n included angle D= %0.3f degrees %0.3f minutes",deg5,mins5)
printf("\n exterior angle D= %0.3f degrees %0.3f minutes",deg6,mins6)
printf("\n included angle E= %0.3f degrees %0.3f minutes",deg7,mins7)
printf("\n %0.3f degrees %0.3f degrees ",check,summ)

//(b)

printf("\n %0.3f correct  %0.3f correct  %0.3f correct", FB_AB,FB_BC,BB_AB)


FB_BC=(328+(45/60))-(326+(15/60))
FB_CD=(224+(30/60))+FB_BC
BB_CD=227-180
correctionatD=1
FB_DE=(217+(15/60))+1
BB_DE=FB_DE-180

deg1=int(FB_AB)
mins1=int((FB_AB-deg1)*60)
deg2=int(FB_CD)
mins2=int((FB_CD-deg2)*60)
deg3=int(BB_CD)
mins3=int((BB_CD-deg3)*60)
deg4=int(FB_DE)
mins4=int((FB_DE-deg4)*60)
deg5=int(BB_DE)
mins5=int((BB_DE-deg5)*60)

printf("\n correction= %0.3f ",correctionatD)
printf("\n corrected values are:")
printf("\n FB_AB= %0.3f degrees %0.3f minutes",deg1,mins1)
printf("\n FB_CD= %0.3f degrees %0.3f minutes",deg2,mins2)
printf("\n BB_CD= %0.3f degrees %0.3f minutes",deg3,mins3)
printf("\n FB_DE= %0.3f degrees %0.3f minutes",deg4,mins4)
printf("\n BB_DE= %0.3f degrees %0.3f minutes",deg5,mins5)
printf("\n AB=100m, BC=100m,CD=50m, scale=20m for plot")
