clear;
clc;
disp("--------------Example 19.5---------------")
n=16;   //cidr
fa1=205;  //bytes of 1st address in decimal 
fa2=16;
fa3=37;
fa4=32;
fab1=dec2bin(fa1,8); //convert the bytes to binary
fab2=dec2bin(fa2,8);
fab3=dec2bin(fa3,8);
fab4=dec2bin(fa4,8);
la4=fa4+n-1;  //determine the last byte of the last address
lab4=dec2bin(la4,8); //last address in binary
disp("The block of addresses is");  //display the results 
disp("i) In binary notation :- 1st address = "+fab1+" "+fab2+" "+fab3+" "+fab4)
disp("  last address = "+fab1+" "+fab2+" "+fab3+" "+lab4)
printf("\nii) In dotted decimal notation :- 1st address = %d.%d.%d.%d\n\n    last address = %d.%d.%d.%d",fa1,fa2,fa3,fa4,fa1,fa2,fa3,la4);
