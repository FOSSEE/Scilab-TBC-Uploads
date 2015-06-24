//Given that
mass = 2  //in kg
y1 = 5  //in meter
g = 9.8  //in m/s^2
ref = [0, 3, 5, 6]

//Sample Problem 8-2a
printf("**Sample Problem 8-2a**\n")
for x = ref
    U = mass* g* (y1 - x)
    printf("The potential energy at y1 is %dJ if reference is assumed to be at y=%d\n", U, x)
end

//sample Probelm 8-2b
printf("\n**Sample Problem 8-2b**\n")
y2 = 0
//The change in potential energy doesn't depend on choice of reference
deltaY = y2 - y1
//because the deltaY doesn't depend upon the choice of references
deltaU = mass* g* deltaY
printf("The change in potential energy is %dJ same for all the references", deltaU)