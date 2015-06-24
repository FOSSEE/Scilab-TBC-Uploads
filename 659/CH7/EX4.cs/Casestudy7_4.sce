//               Case Study: Chapter-7
//           4.Production and sales analysis

//Input Data
disp("Enter products manufactured week_wise");
disp("M11,M12,--,M21,M22,--etc");
for i=1:2
    for j=1:5
        M(i,j)=scanf("%d");
    end
end
disp("Enter products sold week_wise");
disp("S11,S12,--,S21,S22,--etc");
for i=1:2
    for j=1:5
        S(i,j)=scanf("%d");
    end
end
disp("Enter cost of each product");
for j=1:5
    C(j)=scanf("%d");
end
//Values matrices of production and sales
for i=1:2
    for j=1:5
        Mvalue(i,j)=M(i,j)*C(j);
        Svalue(i,j)=S(i,j)*C(j);
    end
end
//Total value of weekly production and sales
for i=1:2
    Mweek(i)=0;
    Sweek(i)=0;
    for j=1:5
        Mweek(i)=Mweek(i)+Mvalue(i,j);
        Sweek(i)=Sweek(i)+Svalue(i,j);
    end
end
//Monthly value of product_wise production and sales
for j=1:5
    Mproduct(j)=0;
    Sproduct(j)=0;
    for i=1:2
        Mproduct(j)=Mproduct(j)+Mvalue(i,j);
        Sproduct(j)=Sproduct(j)+Svalue(i,j);
    end
end
//Grand total of production and sales values
Mtotal=0;Stotal=0;
for i=1:2
    Mtotal=Mtotal+Mweek(i);
    Stotal=Stotal+Sweek(i);
end

//***********************************************
//Selection and printing of information required
//***********************************************
disp("Following is the list of things you request for");
disp("Enter appropriate number and press return key");

disp("1.Value matrices of production and sales");
disp("2.Total value of weekly production and sales");
disp("3.Production_wise monthly value of production and sales");
disp("4.Grand total value of production and sales");
disp("5.Exit")

number=0;
while(1)
    //Begining of while loop
    number=input("ENTER YOUR CHOICE:");
    if(number==5) then
        disp("Good Bye");
        break;
    end
    select number
        //Value Matices
    case 1 then
        disp("VALUE MATRIX OF PRODUCTION");
        for i=1:2
            printf("Week(%d)\t",i);
            for j=1:5
               printf("%7d",Mvalue(i,j));
            end
            printf("\n");
        end
       disp("VALUE MATRIX OF SALES");
        for i=1:2
           printf("Week(%d)\t",i);
            for j=1:5
               printf("%7d",Svalue(i,j));
            end
            printf("\n");
        end
       //Weekly Analysis
    case 2 then 
        disp("TOTAL WEEKLY PRODUCTION AND SALES");
        disp("          PRODUCTION     SALES");
        disp("          ----------    ------");
        for i=1:2
            printf("Week(%d)\t",i);
            printf("%7d\t%9d\n",Mweek(i),Sweek(i));
        end
      //Product wise Analysis
    case 3 then
        disp("PRODUCTWISE TOTAL PRODUCTION AND SALES");
        disp("             PRODUCTION     SALES");
        disp("              ----------    ------");
        for i=1:5
            printf("Product(%d)\t",i);
            printf("%7d\t%7d\n",Mproduct(i),Sproduct(i));
        end  
     //Grand Totals
    case 4 then
       disp("GRAND TOTAL OF PRODUCTION AND SALES");
       printf(" Total production = %d\n",Mtotal);
       printf(" Total sales = %d\n",Stotal);
      //Default
    else
       printf("Wrong choicce,select again\n");
 end //End of select
end  //End of while
disp("Exit from the program");