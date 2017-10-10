clear
//
//case a
vab=400 //phase angle of 0
vbc=400 //phase angle of 120
vca=400 //phase angle of 240
//the phase currents are given by iab,ibc,ica
iab=400/150 //from the diagram 
printf("\n iab= %0.5f  A",iab)
//ibc=(400*314*50)/10**6  numerator with an angle of -120 and denominator angle of -90 which amounts to -30 in numerator
//this leads to simplifying with the formula as the value obtained for ibc after simplification from above mutiplied by values of cos(-30)+jsin(-30)
//therefore print as below
printf("\n ibc=5.4414-j3.1416 A")
//same method for ica
printf("\n ica=3.1463+j4.2056 A")
//case b
//ia=iab-ica
//ia=2.667-(3.1463+j4.2056)
//leads to 4.2328 with an angle of -96.51
//angle calculated using tan formula
printf("\n ia=4.2328 with an angle of -96.51  A")
//same for ib and ic
printf("\n ib=4.1915 with angle of -48.55   A")
printf("\n ic=7.6973 with an angle of 107.35   A")
