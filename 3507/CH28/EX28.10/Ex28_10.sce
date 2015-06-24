//chapter28
//example28.10
//page607

printf("1) Y  = A . B . C` + A . ( B . C )` \n")
printf("   Y` = ( A . B . C` + A . ( B . C )` )` \n")
printf("   By De Morgan theorem \n")
printf("   Y` = ( A . B . C`)` . ( A . ( B . C)` )` \n")
printf("   By De Morgan theorem \n")
printf("   Y` = ( A` + B` + C ) . ( A` + B + C ) \n \n")
printf("2) Y  = A` . ( B .C` + B` . C ) \n")
printf("   Y`  = ( A` . ( B .C` + B` . C ) )` \n")
printf("   By De Morgan theorem \n")
printf("   Y` = A + ( B . C` + B` .C )` \n")
printf("   By De Morgan theorem \n")
printf("   Y` = A + ( B . C`)` . ( B` . C )` \n")
printf("   By De Morgan theorem \n")
printf("   Y` = A + ( B` + C ) . ( B + C`) \n")
printf("   Y` = A + ( B . C )` + ( B . C ) \n")
