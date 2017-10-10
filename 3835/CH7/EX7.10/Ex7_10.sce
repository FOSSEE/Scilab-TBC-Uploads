clear
//
//case a
vl=11000
il=50
pf=0.85 //powerfactor
p=vl*il*pf
printf("\n Power supplied to the motor is= %0.5f  kW",p)
//case b
vt=6350.85 //at angle 0 
zs=25.02 //at angle 0
//subcase 1 powerfactor at 0.85 lag
//e=vt-ia*zs
//e=6350.85-50(at angle -31.79)*25.02(at angle 87.71)
//substituting and solving as in x+iy form we get 5744.08 at angle -10.39 as the value of e
printf("\n emf induced=5744.08 at angle -10.39")
//subcase 2
//for a 0.85 lead same process as above is followed except angles are considered positive due to lead
printf("\n emf induced=7051.44 at angle -8.88")
