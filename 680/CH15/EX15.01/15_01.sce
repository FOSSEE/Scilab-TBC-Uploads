//Problem 15.01:

//initializing the variables:
FECI93 = 391.2
FECI95 = 425.4
FECI99 = 434.1
c93 = 245000; // in $

//calculation:
c95 = c93*FECI95/FECI93
c99 = c93*FECI99/FECI93

printf("\n\nResult\n\n")
printf("\n Cost(1995) is %.0f $ and Cost(1999) is %.0f $",c95,c99)