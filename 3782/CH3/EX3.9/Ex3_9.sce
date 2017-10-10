
//
//

magneticbearing=320+(30/60)
declination=3+(30/60)
truebearing=magneticbearing-declination
declination2=4+(15/60)
MB=truebearing-declination2
deg=int(MB)
mins=(MB-deg)*60
printf("\n Magnetic bearing= %0.3f degrees %0.3f minutes",deg,mins)
