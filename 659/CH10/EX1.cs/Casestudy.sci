//                  Case study: Chapter-10, Page No:341
//                       Book Shop Inventory

funcprot(0);
//Defining functions
function [string1]=get1()
    string1=read(%io(1),1,1,'(a)');
endfunction
function [i] =look_up(table,s1,s2,m)
    for i=1:m
        x=strcmp(s1,table(i).title);
        y=strcmp(s2,table(i).author);
        if x==0 & y==0 then
            return i;   //Book found
        end
     end
      i=-1;  //Book not found
endfunction

//Creates array of structures 
book=[struct('author','Ritche','title','C Language','price',45.00,'month','May','year',1977,'publisher','PHI','quantity',10)
      struct('author','Kochan','title','Programming in C','price',75.50,'month','July','year',1983,'publisher','Hayden','quantity',5)
      struct('author','Balagurusamy','title','BASIC','price',30.00,'month','January','year',1984,'publisher','TMH','quantity',0)
      struct('author','Balagurusamy','title','COBOL','price',60.00,'month','December','year',1988,'publisher','Macmillan','quantity',25)
         ];
n=size(book); 
no_of_records=n(1);
response=' ', a=1;
while ((response=='Y' | response=='y')|a==1)
    //Read data
    printf("Enter title and author name as per the list:\n");
    printf("Title: \n");
    title1=get1();
    printf("Author:\n");
    author1=get1();
    //Calling index() function and
    //Passing structure book to function look_up()
    index=look_up(book,title1,author1,no_of_records);
    //If book found then print the book detail otherwise not in list
    if index~=-1 & index then   //Book found
      printf("% s  %s",book(index).author, book(index).title);
      printf("%  .2f  %s",book(index).price, book(index).month);
      printf("%  d  %s\n",book(index).year, book(index).publisher);
      quantity=input("Enter number of copies :");
      if quantity<book(index).quantity then
       printf("Cost of %d copies = %.2f\n",quantity,book(index).price*quantity);
      else
         printf("Required copies not in stock\n");
      end
    else
         printf("Book not in list\n");
    end
    printf("\nDo you want any other book?(YES/NO):");
    response=get1();a=2;
end
printf("  Thank you.     Good Bye");