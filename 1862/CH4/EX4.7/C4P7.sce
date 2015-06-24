


 clc
//to find velocity of plane with respect to ground
//to find compass reading if pilot wishes to fly due east

// GIVEN::
//refer to figure 4-18(a),(b) from page no.77
//speed of air on the indicator 
V_PA =215//in km/h
//velocity of wind blowing due north
V_AG = 65//in km/h


// SOLUTION:


//magnitude of velocity of plane with respect to ground
V_PG1 = sqrt(V_PA^2 + V_AG^2)//in km/h
//direction of plane
//angle made by the plane with east direction
alpha = atand(V_AG/V_PA)//in degrees

//magnitude of velocity of plane if pilot wishes to fly due east
//now velocity of plane with respect to groung points east
V_PG2 = sqrt(V_PA^2 - V_AG^2)//in km/h
//direction of plane
//angle made by the plane with east direction
bita = asind(V_AG/V_PA)//in degrees
V_PG1 = round(V_PG1)
V_PG2 = round(V_PG2)
printf ("\n\n Magnitude of velocity of plane with respect to ground V_PG1 = \n\n %3i km/h",V_PG1);
printf ("\n\n Angle made by the plane with east direction alpha = \n\n %.1f degrees",alpha);
printf ("\n\n Magnitude of velocity of plane if pilot wishes to fly due east V_PG2 = \n\n %3i km/h",V_PG2);
printf ("\n\n Angle made by the plane with east direction bita = \n\n %.1f degrees",bita);
