clc
Qacb = 84 // Heat transfer along the path acb in kJ 
Wacb = 32 // Work done along the path acb in kJ
Uba = Qacb-Wacb // Ub-Ua
// Part (a)
Wadb = 10.5 // Work done along the path adb in kJ
Qadb = Uba+Wadb // Heat flow into the system along the path adb
printf("\n Example 4.2")
printf("\n The heat flow into the system along the path adb is %f kJ.",Qadb)


// Part (b)
Wb_a = -21 // work done along the path ba in kJ
Uab = - Uba // Change in internal energy along the path ab in kJ
Qb_a = Uab+Wb_a // Heat liberated along the path b-a
printf("\n The heat liberated along the path b-a is %d kJ.",Qb_a)

// Part (c)
Wdb = 0 // Constant volume
Wad = 10.5 // work done along the path ad in kJ
Wadb = Wdb-Wad // work done along the path adb in kJ
Ud = 42
Ua = 0
Qad = Ud-Ua+Wad // Heat flow into the system along the path ad in kJ
Qdb = Qadb-Qad  //Heat flow into the system along the path db in kJ
printf("\n The heat absorbed in the path ad and db are %f kJ nd %d kJ respectively.",Qad,Qdb)
