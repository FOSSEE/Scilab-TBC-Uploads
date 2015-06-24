clc
clear
printf("Example 4.2 | Page number 94 \n\n");
//Part (a) Find change in energy of the system
//Part (b) Find the magnitude and direction of work during B
//Given Data
Q_a = -50 //KJ //heat transferred from the system along path A
W_a = -65 //KJ //work done along path A
Q_b = 0 //KJ //heat transferred from the system along path B
//W_b work done along path B

//Solution

//Part(a)
printf("Part (a)\n");
delE_a = Q_a - W_a //KJ //Change in energy along path A
printf("Change in energy of the system = %.2f KJ\n\n",delE_a);

//Part(b)
printf("Part (b)\n");
delE_b = -1*delE_a //KJ //Change in energy along path B
W_b = delE_b - Q_b //KJ //work done along path B
printf("Magnitude and direction of work done during B, W_b = %.2f KJ",W_b)
