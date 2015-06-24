//chapter28
//example28.5
//page598

disp(" A      B      A`    Y_dash = A`. B      B`      Y = Y_dash + B` ")
disp(" 0      0      1         0               1             1 ")
disp(" 1      0      0         0               1             1 ")
disp(" 0      1      1         1               0             1 ")
disp(" 1      1      0         0               0             0 ")

printf("\nexplanation: \n")
printf("A=0 and B=0 give A`=1 and B`=1 so Y_dash = A`.B is 0 and Y = Y_dash + B` is 1 \n")

printf("A=1 and B=0 give A`=0 and B`=1 so Y_dash = A`.B is 0 and Y = Y_dash + B` is 1 \n")

printf("A=0 and B=1 give A`=1 and B`=0 so Y_dash = A`.B is 1 and Y = Y_dash + B` is 1 \n")

printf("A=1 and B=1 give A`=0 and B`=0 so Y_dash = A`.B is 0 and Y = Y_dash + B` is 0 \n")
