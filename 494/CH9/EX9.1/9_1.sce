//All the quantities are expressed in SI units

M = 2;                    //mach number
h = 16000;                   //altitude of the plane

//the mach angle can be calculated from eq.(9.1) as
mue = asin(1/M);          //mach angle

d = h/tan(mue);

printf("\nRESULTS\n---------\nThe plane is ahead of the bystander by a distance of:\n        d = %2.1f km\n",d/1000)