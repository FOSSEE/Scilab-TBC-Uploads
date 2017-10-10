

//
//given

BB_AB=330+(0/60)
BB_BC=48+(0/60)
BB_CD=127+(45/60)
BB_DE=120+(0/60)
BB_EA=229+(30/60)

FB_AB=150+(0/60)
FB_BC=230+(30/60)
FB_CD=306+(15/60)
FB_DE=298+(0/60)
FB_EA=49+(30/60)

//calculate
interiorA=BB_EA-FB_AB
interiorB=BB_AB-FB_BC
exteriorC=FB_CD-BB_BC
interiorC=360-(258+(15/60))
exteriorD=FB_DE-BB_CD
interiorD=360-exteriorD
interiorE=BB_DE-FB_EA

//convert into mins and degrees
deg1=int(interiorA)
mins1=int((interiorA-deg1)*60)
deg2=int(interiorB)
mins2=int((interiorB-deg2)*60)
deg3=int(exteriorC)
mins3=int((exteriorC-deg3)*60)
deg4=int(interiorC)
mins4=int((interiorC-deg4)*60)
deg5=int(exteriorD)
mins5=int((exteriorD-deg5)*60)
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
printf("\n exterior angle D= %0.3f degrees %0.3f minutes",deg5,mins5)
printf("\n Interior angle D= %0.3f degrees %0.3f minutes",deg6,mins6)
printf("\n Interior angle E= %0.3f degrees %0.3f minutes",deg7,mins7)
printf("\n %0.3f degrees %0.3f degrees ",check,summ)

error=541-540
correction=(-60/5)
printf("\n error= %0.3f degrees",error)
printf("\n %0.3f minutes",correction)

correctedvalue1=mins1+correction
correctedvalue2=mins2+correction
correctedvalue4=mins4+correction
correctedvalue6=mins6+correction
correctedvalue7=mins7+correction

printf("\n corrected values are:")
printf("\n Interior angle A= %0.3f degrees %0.3f minutes",deg1,correctedvalue1)
printf("\n Interior angle B= %0.3f degrees %0.3f minutes",deg2,correctedvalue2)
printf("\n Interior angle C= %0.3f degrees %0.3f minutes",deg4,correctedvalue4)
printf("\n Interior angle D= %0.3f degrees %0.3f minutes",deg6,correctedvalue6)
printf("\n Interior angle E= %0.3f degrees %0.3f minutes",deg7,correctedvalue7)
