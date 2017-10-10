

//

//

interiorB=(45+(30/60))+180-(120+(15/60))//given
deg=int(interiorB)//convert into mins and degrees
mins=(interiorB-deg)*60
printf("\n Interior angle B= %0.3f degrees %0.3f minutes",deg,mins)

interiorC=(120+(15/60))+180-(200+(30/60))
//convert into mins and degrees
deg=int(interiorC)
mins=(interiorC-deg)*60
printf("\n Interior angle C= %0.3f degrees %0.3f minutes",deg,mins)

exteriorD=(280+(45/60))+180-(200+(30/60))
//convert into mins and degrees
deg=int(exteriorD)
mins=(exteriorD-deg)*60
printf("\n Exterior angle D= %0.3f degrees %0.3f minutes",deg,mins)

interiorD=360-(260+(15/60))
//convert into mins and degrees
deg=int(interiorD)
mins=(interiorD-deg)*60
printf("\n Interior angle D= %0.3f degrees %0.3f minutes",deg,mins)
