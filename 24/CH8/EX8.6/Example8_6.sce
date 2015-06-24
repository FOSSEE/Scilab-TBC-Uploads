//Given that
m = 14  //in kg
F = 40  //in N
d = 0.50  //in meter
Vo = 0.60  //in m/s
V = 0.20  //in m/s

//Sample Problem 8-6a
printf("**Sample Problem 8-6a**\n")
//Using the definition of Work done
Wf = F* d
printf("The work done by the force F is equal to %dJ\n", Wf)

//Sample Problem 8-6b
printf("\n**Sample Problem 8-6b**\n")
//Using Work-Energy theorem
//TE = decrease in Kinetic Energy + Work done by the force F
TE = .5*m*(Vo^2 - V^2) + Wf
printf("The incrase in the thermal energy is equal to %fJ", TE)