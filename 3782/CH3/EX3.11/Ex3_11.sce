

//
//

bearingOB=140+(15/60)//given
bearingOA=30+(30/60)//given
angleAOB=bearingOB-bearingOA
deg=int(angleAOB)
mins=(angleAOB-deg)*60//finding minutes
printf("\n AngleAOB= %0.3f degrees %0.3f minutes",deg,mins)

bearingOC=220+(45/60)//given
angleBOC=bearingOC-bearingOB
deg=int(angleBOC)
mins=(angleBOC-deg)*60//finding minutes
printf("\n AngleBOC= %0.3f degrees %0.3f minutes",deg,mins)

bearingOD=310+(30/60)//given
angleCOD=bearingOD-bearingOC
deg=int(angleCOD)
mins=(angleCOD-deg)*60//finding minutes
printf("\n AngleCOD= %0.3f degrees %0.3f minutes",deg,mins)
