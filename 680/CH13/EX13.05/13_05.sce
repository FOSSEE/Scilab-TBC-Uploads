//Problem 13.05:

//initializing the variables:
DG0fCH3COOH = -93800; // cal/gmol  
DG0fCH4 = -12140; // cal/gmol
DG0fCO2 = -94258; // cal/gmol
 
//calculation:
DG0298 = DG0fCH3COOH - DG0fCH4 - DG0fCO2

printf("\n\nResult\n\n")
printf("\n DG0298 of reaction is %.0f cal/gmol",DG0298)