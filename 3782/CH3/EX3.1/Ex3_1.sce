

//
//

//(a)QB of AB
WCB_AB=45+(30/60)
QB_AB=WCB_AB
mins=(QB_AB-int(QB_AB))*60
deg=int(QB_AB)
printf("\n N %0.3f degrees %0.3f minutes E",deg,mins)
 
//(b)QB of BC
WCB_BC=125+(45/60)
QB_BC=180-WCB_BC
mins=(QB_BC-int(QB_BC))*60
deg=int(QB_BC)
printf("\n S %0.3f degrees %0.3f minutes E",deg,mins)

//(c) QB of CD
WCB_CD=222+(15/60)
QB_CD=WCB_CD-180
deg=int(QB_CD)
mins=(QB_CD-deg)*60
printf("\n S %0.3f degrees %0.3f minutes W",deg,mins)

//(d) QB of DE
WCB_DE=320+(30/60)
QB_DE=360-WCB_DE
deg=int(QB_DE)
mins=(QB_DE-deg)*60
printf("\n N %0.3f degrees %0.3f minutes W",deg,mins)
