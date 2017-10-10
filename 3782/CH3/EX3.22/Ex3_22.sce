

//
//given

BB_AB=45+(30/60)
BB_BC=60+(40/60)
BB_CD=3+(20/60)
BB_DA=85+(00/60)


FB_AB=45+(30/60)
FB_BC=60+(0/60)
FB_CD=5+(30/60)
FB_DA=83+(30/60)


printf("\n %0.3f correct  %0.3f correct  %0.3f correct", FB_AB,FB_BC,BB_AB)


correctionatC=-0+(40/60)
FB_CD=(5+(30/60))+correctionatC
correctionatD=1+(30/60)
FB_DA=83+(30/60)+correctionatD

//convert into mins and degrees

deg2=int(FB_CD)
mins2=int((FB_CD-deg2)*60)
deg4=int(FB_DA)
mins4=int((FB_DA-deg4)*60)


printf("\n correctionatC= %0.3f ",correctionatC)
printf("\n correctionatD= %0.3f ",correctionatD)

printf("\n corrected values are:")
printf("\n BB_CD=N %0.3f  W BB_BC=N %0.3f degrees W",4.83,60)
printf("\n FB_CD=N %0.3f W FB_DA=N %0.3f degrees W",4.83,85)
