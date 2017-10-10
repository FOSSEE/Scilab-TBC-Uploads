

//
//given

BB_AB=330+(15/60)
BB_BC=200+(30/60)
BB_CD=115+(45/60)
BB_DE=38+(0/60)
BB_EA=300+(30/60)

//calculations
exteriorA=BB_EA-(150+(15/60))
interiorA=360-exteriorA
exteriorB=BB_AB-(20+(30/60))
interiorB=360-exteriorB
interiorC=(295+(45/60))-BB_BC
interiorD=218-BB_CD
interiorE=(120.5)-BB_DE

//convert into mins and degrees
deg1=int(exteriorA)
mins1=int((exteriorA-deg1)*60)
deg2=int(interiorA)
mins2=int((interiorA-deg2)*60)
deg3=int(exteriorB)
mins3=int((exteriorB-deg3)*60)
deg4=int(interiorB)
mins4=int((interiorB-deg4)*60)
deg5=int(interiorC)
mins5=int((interiorC-deg5)*60)
deg6=int(interiorD)
mins6=int((interiorD-deg6)*60)
deg7=int(interiorE)
mins7=int((interiorE-deg7)*60)

n=5
check=(2*n-4)*90
summ=interiorA+interiorB+interiorC+interiorD+interiorE

printf("\n exterior angle A %0.3f degrees %0.3f minutes",deg1,mins1)
printf("\n interior angle A %0.3f degrees %0.3f minutes",deg2,mins2)
printf("\n Exterior angle B %0.3f degrees %0.3f minutes",deg3,mins3)
printf("\n interior angle B %0.3f degrees %0.3f minutes",deg4,mins4)
printf("\n interior angle C %0.3f degrees %0.3f minutes",deg5,mins5)
printf("\n interior angle D %0.3f degrees %0.3f minutes",deg6,mins6)
printf("\n interior angle E %0.3f degrees %0.3f minutes",deg7,mins7)
printf("\n %0.3f degrees %0.3f degrees W",check,summ)
