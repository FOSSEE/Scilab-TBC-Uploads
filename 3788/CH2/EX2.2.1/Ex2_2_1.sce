//Example 2.2.1
//Geostationary Satellite Look Angles

//Variable Declaration
Le=52.0
le=0
longs=66.0

//Calculation
y=acosd(cosd(Le)*cosd(longs-le))
printf("Central Angle is %f degrees\n",y)

El=atand((6.6107345-cosd(y))/sind(y))-y
printf("Elevation Angle is %f degrees\n",(El))

alpha=atand(tand(longs-le)/sind(Le))
printf("Intermediate Angle is %f degrees\n",alpha)

Az=180-alpha
printf("Azimuth Angle is %f degrees (clockwise from true north )",Az)
