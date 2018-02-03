//Stone dropped into well
//let
//h=depth of well
//t1=time tataken by stone to strike water
//t2=time taken by sound to travel h
//t1+t2=4
//h=(g*t1^2)/2
//h=335*t2
//solving
//t1^2+68.30*t1-273.19=0
t1=3.79  //sec
h=(9.81*t1^2)/2  //m
printf("h=%.2f m",h)
