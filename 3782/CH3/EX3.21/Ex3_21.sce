


//
//given

BB_AB=239+(00/60)
BB_BC=317+(00/60)
BB_CD=36+(30/60)
BB_DE=29+(00/60)
BB_EA=138+(45/60)

FB_AB=59+(00/60)
FB_BC=139+(30/60)
FB_CD=215+(15/60)
FB_DE=208+(0/60)
FB_EA=318+(30/60)

printf("\n %0.3f correct  %0.3f correct  %0.3f correct", FB_AB,FB_BC,BB_AB)


correctionatC=2+(30/60)
FB_CD=(215+(15/60))+correctionatC
correctionatD=1+(15/60)
FB_DE=208+correctionatD
correctionatE=(15/60)
FB_EA=(318+(30/60))+correctionatE

//convert into mins and degrees
deg2=int(FB_CD)
mins2=int((FB_CD-deg2)*60)
deg4=int(FB_DE)
mins4=int((FB_DE-deg4)*60)
deg5=int(FB_EA)
mins5=int((FB_EA-deg5)*60)

printf("\n correctionatC= %0.3f ",correctionatC)
printf("\n correctionatD= %0.3f ",correctionatD)
printf("\n correctionatE= %0.3f ",correctionatE)
printf("\n corrected values are:")
printf("\n BB_CD= %0.3f  BB_DE= %0.3f  BB_EA= %0.3f ",217.75,209.25,138.75)
printf("\n FB_CD= %0.3f degrees %0.3f minutes",deg2,mins2)
printf("\n FB_DE= %0.3f degrees %0.3f minutes",deg4,mins4)
printf("\n FB_EA= %0.3f degrees %0.3f minutes",deg5,mins5)
printf("\n declination= -10 degrees W")

BB_AB=239+(00/60)-10
BB_BC=317+(00/60)-10+correctionatC
BB_CD=36+(30/60)-10+correctionatD
BB_DE=29+(00/60)-10
BB_EA=138+(45/60)-10

FB_AB=59-10
FB_BC=(139+(30/60))-10
FB_CD=(215+(15/60))-10+correctionatC
FB_DE=(208+(0/60))-10+correctionatD
FB_EA=(318+(30/60))-10+correctionatE

printf("\n true bearing values:")
printf("\n BB_AB= %0.3f ",BB_AB)
printf("\n BB_BC= %0.3f ",BB_BC)
printf("\n BB_CD= %0.3f ",BB_CD)
printf("\n BB_DE= %0.3f ",BB_DE)
printf("\n BB_EA= %0.3f ",BB_EA)

printf("\n FB_AB= %0.3f ",FB_AB)
printf("\n FB_BC= %0.3f ",FB_BC)
printf("\n FB_CD= %0.3f ",FB_CD)
printf("\n FB_DE= %0.3f ",FB_DE)
printf("\n FB_EA= %0.3f ",FB_EA)
