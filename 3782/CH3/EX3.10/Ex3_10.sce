
//
//

//(a)
magneticbearing=175+(30/60)
magneticdeclination=180-magneticbearing
deg=int(magneticdeclination)
mins=(magneticdeclination-deg)*60
printf("\n %0.3f degrees %0.3f minutes W",deg,mins)
//(b)

magneticdeclination=5+(45/60)
deg=int(magneticdeclination)
mins=(magneticdeclination-deg)*60
printf("\n %0.3f degrees %0.3f minutes W",deg,mins)
