//chapter28
//example28.11
//page608

printf("1) Y = ( A + B + C ) . ( A + B ) \n")
printf("   Y = A . A + A . B + B . A + B . B + C . A + C . B \n")
printf("   Using A . A = A we get \n")
printf("   Y = A + A . B + A . B + B + A . C + B . C \n")
printf("   Using A . B + A . B = A . B we get \n")
printf("   Y = A + A . B + B + A . C + B . C \n")
printf("   Using A + A . B = A we get \n")
printf("   Y = A + B + A . C + B . C \n")
printf("     = A . ( 1 + C ) + B . ( 1 + C ) \n")
printf("   Using 1 + C = 1 we get \n")
printf("   Y = A . 1 + B . 1 \n")
printf("   Y = A + B \n \n")

printf("2) Y = A . B + A . B . C + A . B . C` \n")
printf("     = A . B + A . B ( C + C` ) \n")
printf("   Since C + C` = 1 we get \n")
printf("   Y = A . B + A . B \n")
printf("     = A . B \n \n")


printf("3) Y = 1 + A . ( B . C` + B . C + B` . C`) + A . B` . C + A . C \n")
printf("   Using 1 + A = 1 and 1 + A . ( B . C` + B . C + ( B . C )` ) = 1 we get \n")
printf("   Y = 1 + A . B` . C + A . C \n")
printf("   Y = 1 + A . C \n")
printf("   Y = 1 \n \n")

printf("4) Y = ( ( A + B` + C ) + ( B + C` ))` \n")
printf("   By De Morgan theorem \n")
printf("   Y = ( A + B` + C )` . ( B + C` )` \n")
printf("   By De Morgan theorem \n")
printf("   Y = ( A` . B . C` ) . ( B` . C ) \n")
printf("   Since B . B` = 0 and C . C` = 0 we get \n")
printf("   Y = 0 \n")
