clear
//Initialisation
n=8                                 //8 bit
n2=16                               //16 bit
n3=32                               //32 bit


//Calculation
c=2**n                               //value for 8 bit
p=(1*c**-1)*100                      //percent
c2=2**n2                             //value for 16 bit
p2=(1*c2**-1)*100                      //percent
c3=2**n3                             //value for 32 bit
p3=(1*c3**-1)*100                      //percent

//Result
printf("\n An 8-bit word resolution = %.2f percent\n",p)

printf("\n An 16-bit word resolution = %.4f percent\n",p2)

printf("\n An 32-bit word resolution = %.9f percent\n",p3)

