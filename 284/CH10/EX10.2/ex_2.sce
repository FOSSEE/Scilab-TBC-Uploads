// Chapter 10_Fundamentals of the Metal Oxide Semiconductor Field Effect Transistor
//Caption_Work function
//Ex_2//page 437
phi_m=3.2    //work function for Al-Si junction
xi=3.25    //oxide electron affinity
Eg=1.11
ni=1.5*10^10     //intrinsic carrier concentration
Na=10^14
phi_fp=0.0259*log(Na/ni)
phi_ms=phi_m-(xi+Eg/(2)+phi_fp)
printf('Metal semiconductor work function difference is %1.2f V',phi_ms)