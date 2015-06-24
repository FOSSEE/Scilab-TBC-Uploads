//Sample Problem 5-9a
F_ap = 20  //in N
m_A = 4  //in kg
m_B = 6  //in kg

//Sample Problem 5-9a
printf("**Sample Problem 5-9a**\n")
ac = F_ap /(m_A + m_B)
printf("The comon acceleration of the blocks is %f m/s^2\n", ac)

//Sample Problem 5-9b
printf("\n**Sample Problem 5-9b**\n")
//from FBD of A
//F - F_AB = m_A * a
F_AB = F_ap - m_A *ac
printf("The force on block B by Block A is %f N", F_AB)