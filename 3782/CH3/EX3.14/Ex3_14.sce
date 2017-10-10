

//
//


//given
FB_AB=120+(30/60)
FB_BC=FB_AB+180-90
FB_CD=FB_BC-180+270
FB_DA=FB_CD-180-90

//convert into mins and degrees
deg1=int(FB_AB)
mins1=(FB_AB-deg1)*60
deg2=int(FB_BC)
mins2=(FB_BC-deg2)*60
deg3=int(FB_CD)
mins3=(FB_CD-deg3)*60
deg4=int(FB_DA)
mins4=(FB_DA-deg4)*60

printf("\nFB_AB = %0.3f degrees %0.3f minutes W",deg1,mins1)
printf("\nFB_BC = %0.3f degrees %0.3f minutes W",deg2,mins2)
printf("\nFB_CD = %0.3f degrees %0.3f minutes W",deg3,mins3)
printf("\nFB_DA = %0.3f degrees %0.3f minutes W",deg4,mins4)
