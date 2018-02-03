//Safety of dam
//refer fig. 3.16
Rx=300  //kN  (towards right)
Ry=100-1200-400  //kN  (Downwards)
//taking moment about O
MO=300*3-100*1+1200*2+400*5
//assume that the resultant cut the base at a distance of x from O
x=MO/Ry  //m
printf("x=%.3f m lies in the middle third of base.Hence dam is safe",-x)

