//Flying bomber
//refer fig. 13.20
h=2400  //m
//Let the time required for bomb to reach ground be t seconds
//then
t=sqrt((2400*2)/(9.81))  //sec
u=(1000*1000)/(60*60)  //m/sec
//Horizontal distance moved by bomb d
d=u*t  //m
//muzzle velocity=600 m/sec
//velocity of projection u=600 m/sec
//alpha=60 degree
//shell has to hit the bomber at height h=2400 m
//let time required for the shell to rise to this height be t1
//then
//t1=110.370 sec or 4.433 sec
//when t1=110.370 sec
//horizontal distance moved by the shell=600*cosd(60)*110.370 m
//distance moved by plane during this period=30658.58 m
//the gun must fire the shell when the bomber is at a distance=33111+30658.58  m
//when t1=4.839 sec
//horizontal distance moved by the shell=1331.70 m
//distance moved by plane during this period=1233.07 m
//the gun must fire the shell when the bomber is at a distance=2564.77 m
printf("\nThe bomb should be released when the bomber is %.2f m away from the target",d)
printf("\nWhen the shell is fired at a distance of 63769.58 m, it will hit the plane in its downward motion.")
printf("\nIf the shell is fired when the bomber is at a distance of 2795.87 m, then it will hit the bomber during its upward motion")

