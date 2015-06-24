exec("degree_rad.sci",-1)

//Given that
v_WG = [65 * sin(dtor(20)),65 * cos(dtor(20))]   //in km/h
v_PG_y = 0
v_PW_mag = 215  //in km/h

//Sample Problem 4-11
printf("**Sample Problem 4-11**\n")
//therefore in direction
v_PW_y = v_PG_y - v_WG(2)
v_PW_x = sqrt(v_PW_mag^2 - v_PW_y^2)
v_PG_x = v_PW_x + v_WG(1)
printf("The magnitude of velocity of plane relative to ground is %f km/h", v_PG_x)