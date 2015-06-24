//                     Example12.3
//A  program to open a file named INVENTORY and store in it the following
// data: Item name   Number     Price    Quantity
//        AAA-1      111       17.50     115
//        BBB-2      125       36.00     75
//        C-3        247       31.75     104
//Extend the program to read this data from the file INVENTORY and display 
//inventory table with the value of each item.

disp("Input file name");
filename=scanf("%s");    //Read file name that is 'INVENTORY'
fp=mopen(filename,'w');  //Open file in write mode,fp is file descriptor
disp("Input inventory data");
disp("Item name     Number     Price     Quantity");
for i=1:3
    //read data from terminal
  [n,item(i),number(i),price(i),quantity(i)]=mscanf("%s %d %f %d");
  //write data to the file
   mfprintf(fp,'%s\t%d\t%.2f\t%d\n',item(i),number(i),price(i),quantity(i));
end
mclose(fp);              //close the file
fp=mopen(filename,'r');  //open file in read mode
disp("Item name   Number   Price   Quantity   Value");
for i=1:3
    //Read data from the file 'INVENTORY'
    [n,item,number,price,quantity]=mfscanf(fp,"%s %d %f %d");
     value=price*quantity;  //Computes value
     //Printing of the data 
     printf('   %s   %7d %8.2f %8d %11.2f\n',item,number,price,quantity,value);
end
mclose(fp);
