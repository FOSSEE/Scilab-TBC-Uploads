//                    Example 10.5
//Write a simple program to illustrate the method of sending an entire
//structure as a parameter to a function.

funcprot(0);
//Defining functions
function [item]=update(product,p,q)
    product.price=product.price+p;
    product.quantity=product.quantity+q;
    item=product;
endfunction
function [value] =mul(stock)
     value=stock.price*stock.quantity;
endfunction

//Creates structure item
item=struct('name','XYZ','price',25.75,'quantity',12);
//Read data
printf("Input increment values:");
printf("  price increment and quantity increment\n");
[p_increment,q_increment]=scanf("%f %d");

//Calling update() and mul() functions
//Passing structure item to functions update() and mul()
//--------------------------------------------------
item=update(item,p_increment,q_increment); 
value=mul(item);
//--------------------------------------------------
//Printing Results
printf("Updated values of items\n");
printf("Name        :%s\n",item.name);
printf("Price       :%f\n",item.price);
printf("Quantity    :%d\n",item.quantity);
printf("Value of item = %f\n",value);