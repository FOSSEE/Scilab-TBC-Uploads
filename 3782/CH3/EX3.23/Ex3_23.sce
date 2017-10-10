

//
//given

BB_AB=41+(15/60)
BB_BC=79+(30/60)
BB_CD=20+(0/60)
BB_DA=80+(00/60)


FB_AB=40+(30/60)
FB_BC=80+(45/60)
FB_CD=19+(30/60)
FB_DA=80+(00/60)


printf("\n %0.3f correct  %0.3f correct  %0.3f correct", FB_DA,FB_AB,BB_DA)

//calculations
correctionatB=-0+(45/60)
FB_BC=(80+(45/60))+correctionatB
correctionatC=0+(30/60)
FB_CD=19+(30/60)+correctionatC


printf("\n correctionatB= %0.3f ",correctionatB)
printf("\n correctionatC= %0.3f ",correctionatC)

printf("\n corrected values are:")
printf("\n BB_AB=N %0.3f E  BB_BC=N %0.3f degrees E",40.5,80)
printf("\n FB_CD=N %0.3f E  FB_DA=S %0.3f degrees E",20,80)
