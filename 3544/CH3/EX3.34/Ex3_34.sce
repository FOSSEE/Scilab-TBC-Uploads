
x = [1 0 1 1 0 1]

disp("Row: ")
row = [x(1),x(6)]
printf("in binary - %d%d",row)

//Convert to decimal
printf("\nin decimal - %d",bin2dec(strcat([string(row)])))

disp("")

disp("Column: ")
col = x(2:5)
printf("in binary - %d%d%d%d",col)

//Convert to decimal
printf("\nin decimal - %d",bin2dec(strcat([string(col)])))

