//Variable declaration:
P_A = 10/100                               //Probability that the first tube is defective if the first is replaced
P_B = 10/100                               //Probability that the second tube is defective if the first is replaced

//Calculation:
P_AB = P_A*P_B                             //Probability that the two tubes are defective if the first is replaced
P_B_A = 9/99                               //Probability that the second tube is defective if the first tube is not replaced
Pd_AB = P_A*P_B_A                          //Probability that both tubes are defective if the first tube is not replaced

//Result:
printf("The probability that both tubes are defective if :")
printf("(a) the first is replaced before the second is drawn is : %f",P_AB)
printf("(b) the first is not replaced before the second is drawn is : %f",Pd_AB)
