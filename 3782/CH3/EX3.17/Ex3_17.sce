

//
//given

FB_AB=45+(30/60)
FB_BC=60+(0/60)
FB_CD=10+(30/60)
FB_DA=75+(45/60)


BB_AB=45+(30/60)
BB_BC=60+(0/60)
BB_CD=10+(30/60)
BB_DA=75+(45/60)


interiorA=180-(FB_AB+BB_DA)
interiorB=(FB_BC+BB_AB)
interiorC=180-(BB_BC+FB_CD)
interiorD=(FB_DA+BB_CD)

//convert into mins and degrees
deg1=int(interiorA)
mins1=int((interiorA-deg1)*60)
deg2=int(interiorB)
mins2=int((interiorB-deg2)*60)
deg3=int(interiorC)
mins3=int((interiorC-deg3)*60)
deg4=int(interiorD)
mins4=int((interiorD-deg4)*60)

//calculations
n=4
check=(2*n-4)*90
summ=interiorA+interiorB+interiorC+interiorD

printf("\n Interior angle A %0.3f degrees %0.3f minutes",deg1,mins1)
printf("\n Interior angle B %0.3f degrees %0.3f minutes",deg2,mins2)
printf("\n Interior angle C %0.3f degrees %0.3f minutes",deg3,mins3)
printf("\n Interior angle D %0.3f degrees %0.3f minutes",deg4,mins4)
printf("\n %0.3f degrees %0.3f degrees ",check,summ)
