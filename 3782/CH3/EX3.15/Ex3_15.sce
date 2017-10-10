

//
//

//given
interiorB=540/5
FB_AB=30+(0/60)
FB_BC=FB_AB+180+interiorB
FB_CD=FB_BC-180+interiorB
FB_DE=FB_CD-180+interiorB
FB_EA=FB_DE+180-360+interiorB
FB_AB=FB_EA+180-360+interiorB

//convert into mins and degrees
deg1=int(FB_AB)
mins1=(FB_AB-deg1)*60
deg2=int(FB_BC)
mins2=(FB_BC-deg2)*60
deg3=int(FB_CD)
mins3=(FB_CD-deg3)*60
deg4=int(FB_DE)
mins4=(FB_DE-deg4)*60
deg5=int(FB_EA)
mins5=0
deg6=int(FB_AB)
mins6=0


printf("\nFB_AB %0.3f degrees %0.3f minutes W",deg1,mins1)
printf("\nFB_BC %0.3f degrees %0.3f minutes W",deg2,mins2)
printf("\nFB_CD %0.3f degrees %0.3f minutes W",deg3,mins3)
printf("\nFB_DE %0.3f degrees %0.3f minutes W",deg4,mins4)
printf("\nFB_EA %0.3f degrees %0.3f minutes W",deg5,mins5)
printf("\nFB_AB %0.3f degrees %0.3f minutes W",deg6,mins6)
