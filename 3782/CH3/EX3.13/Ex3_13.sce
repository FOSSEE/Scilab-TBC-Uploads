

//
//

//given

FB_AB=80+(30/60)
FB_BC=FB_AB+180-60
FB_CA=FB_BC-180+300

//convert into mins and degrees
deg1=int(FB_AB)
mins1=(FB_AB-deg1)*60
deg2=int(FB_BC)
mins2=(FB_BC-deg2)*60
deg3=int(FB_CA)
mins3=(FB_CA-deg3)*60


printf("\nFB_AB is %0.3f degrees %0.3f minutes W",deg1,mins1)
printf("\nFB_BC is %0.3f degrees %0.3f minutes W",deg2,mins2)
printf("\nFB_CA is %0.3f degrees %0.3f minutes W",deg3,mins3)
