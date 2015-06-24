//Variable declaration:
NPS = 3                     //Nominal pipe size (inch)
SN = 40                     //Schedule number

//Calculation:
//From Table 6.2, we obtain that the inside diameter of steel pipe is ID = 3.068 in, outside diameter OD = 3.5 in, wal thickness WT = 0.216 in, and pipe weight PW = 7.58 lb/ft.
ID = 3.068
OD = 3.5
WT = 0.216
PW = 7.58

//Result:
printf("The inside diameter of steel pipe is : %f in",ID)
printf("The outside diameter of steel pipe is : %f in",OD)
printf("The wall thickness of steel pipe is : %f in",WT)
printf("The weight of steel pipe is : %f  lb/ft.",PW)
