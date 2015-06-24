//                     Example 12.6
//Write a program to append additional items to the file INVENTORY 
//created in Example 12.3 and print the total contents of the file.
funcprot(0);
warning('off');
function[item] =append(product,fp)
    printf("Item name:\n");
    product.name=scanf("%s");
    printf("Item number:.\n");
    product.number=scanf("%d");
    printf("Item price\n");
    product.price=scanf("%f");
    printf("Quantity:\n");
    product.quantity=scanf("%d");
    //Write data in the file
     mfprintf(fp,'%s %d %.2f %d\n',product.name,product.number,product.price,product.quantity);
     item=product;
endfunction
//Creating structure
item=struct('name','0','number','0','price','0','quantity','0');
//Read file name that is 'INVENTORY'
disp("Type file name");
filename=scanf("%s");
//Open file in append mode,fp is file descriptor
fp=mopen(filename,'a+');  
b=0;response=-1;
//Read data 
while(response==1|b==0)
    item=append(item,fp);  //calling append() function
    printf("Item %s appended.\n",item.name);
    printf("Do you want to add another item\(1 for YES/0 for NO)?");
    response=scanf("%d");
    b=1;
end
n=mtell(fp);     //position of last character
mclose(fp);

//Opening file in the read mode
fp=mopen(filename,'r');
while (mtell(fp) < n-2)
  //read data from terminal
  [g,item.name,item.number,item.price,item.quantity]=mfscanf(fp,"%s %d %f %d");
  //Print Data to screen
   printf('%s %7d %8.2f %8d\n',item.name,item.number,item.price,item.quantity);
end
mclose(fp);
