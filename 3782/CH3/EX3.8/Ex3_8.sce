
//
//

RB_CD=30+(15/60)
WCB_CD=180+RB_CD
declination=10+(15/60)
TB=WCB_CD+declination
truebearing=TB-180
deg=int(truebearing)
mins=(truebearing-deg)*60
printf("\n Required true bearing= S %0.3f degrees %0.3f minutes W",deg,mins)
