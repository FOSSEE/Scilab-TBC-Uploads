//chapter15
//example15.5
//page328

Pdc=10 // W
Po=4 // W

eta=(Po/Pdc)*100

// maximum power dissipation in a transistor occurs under zero signal conditions so
P=Pdc

printf("collector efficiency = %.3f percent \n",eta)
printf("power rating of transistor = %.3f W \n",P)
