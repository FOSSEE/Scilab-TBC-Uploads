
//

//

magneticbearing=135+0.5
declination=5+0.25
truebearing=magneticbearing-declination
deg=int(truebearing)
mins=truebearing-deg
printf("\n truebearing of AB= %0.3f degrees %0.3f minutes",deg,15.0)

truebearing=210+(45/60)
declination=8+(15/60)
magnetic_bearing=truebearing+declination
deg=int(magnetic_bearing)
mins=magnetic_bearing-deg
printf("\n magnetic bearing of AB= %0.3f degrees %0.3f minutes",deg,mins)
