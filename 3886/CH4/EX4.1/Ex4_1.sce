//finding forces in members of truss
//Refer fig. 4.8
//Step 1
theta=atand(3/3)  //Degree
//Step 2
//Assume Notations as in fig. 4.8
//Step 3
//applying equilibrium conditions
FCB=40/sind(45)  //kN
FCD=FCB*cosd(45)  //kN
//Step 4
//Mark and analyse at joint C
//Step 5
//Analyse joint D
FDB=40  //kN
FDE=40  //kN
//step 6
//Analysis of joint B
FBE=(40+56.57*sind(45))/sind(45)  //kN
FBA=FBE*cosd(45)+56.57*cosd(45)  //kN
//step 7
//Tabulating answers
printf("The required forces in members are:-\nAB=%.2f kN  (Tension)\nBC=%.2f kN  (Tension)\nCD=%.2f kN  (Compression)\nDE=%.2f kN  (Compression)\nBE=%.2f kN  (Compression)\nBD=%.2f kN  (Tension)",FBA,FCB,FCD,FDE,FBE,FDB)
