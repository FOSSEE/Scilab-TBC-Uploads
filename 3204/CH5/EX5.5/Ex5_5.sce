//Initilization of variables
W=100 //N //self weight of the man
alpha=30 //degree // angle made by the ladder with the wall
Lob=4 //m // length from the horizontal to the top of the ladder touching the wall(vertical)
Lcd=2 //m
//Calculations
// using the equiblirium equations
Ya=W //N // From eq'n 2
Lad=Lcd*tand(alpha) //m //Lad is the distance fom pt A to the point where the line from the cg intersects the horizontal
Rb=(W*Lad)/Lob //N // Taking sum of moment abt A
Xa=Rb //N // From eq'n 1
//Results
clc
printf('The horizontal reaction at A i.e Xa is %f N \n',Xa)
printf('The vertical reaction at A i.e Ya is %f N \n',Ya)
printf('The reaction at B i.e Rb is %f N \n',Rb)
