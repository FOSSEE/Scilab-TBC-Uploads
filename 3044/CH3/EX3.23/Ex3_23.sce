//Variable Declaration
// Event B-service incomplete
// Event A1- breakdown service by Janet; Event A2- breakdown service by Tom; Event A3- breakdown service by Georgia; Event A4- breakdown service by Peter
// Event B1- incomplete repair by Janet; Event B2- incomplete repair by Tom; Event B3- incomplete repair by Georgia; Event B4- incomplete repair by Peter
// we need to find P(A1/B) i.e.=(P(A1).P(B/A1))/(P(A1).P(B/A1)+P(A2).P(B/A2)+P(A3).P(B/A3)+P(A4).P(B/A4))

//Calculation
P = (0.20 * .05)/((0.20*.05)+(0.60*.10)+(0.15*.10)+(0.05*.05))         // Required probability

//Results
printf ( "Required probability: %.3f",P)
