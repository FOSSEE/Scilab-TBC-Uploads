//Forces in various segments of cable
//Refer fig. 2.21 (a) and (b)
//Apply Lami's theorem at point D
T1=250*sind(180-60)/sind(60+45)  //N
T2=250*sind(90+45)/sind(60+45)  //N
//Now consider system of forces acting at B
//Resolving the forces we get
T3=(T2*cosd(60)+200)/cosd(30)  //N
T4=T3*sind(30)+T2*sind(60)  //N
printf("\nthe various forces are:-\nT1=%.1f N\nT2=%.1f N\nT3=%.1f N\nT4=%.1f N",T1,T2,T3,T4)

