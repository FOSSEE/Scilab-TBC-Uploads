//To determine force in the bar and floor reaction
//Refer Fig. 2.17(b)
//Equilibrium equation gives
S=(7*cosd(45)-5)/cosd(30)  //kN
R=10+7*sind(45)-S*sind(30)  //kN
printf("Tensile force in the bar has magnitude %.3f kN and Reaction from floor is R=%.3f kN",-S,R)
