            //Example 12.14
        //Updating Customer Records
        
Date = struct('month',0,'day',0,'year',0);
lastpayment = Date;
account = struct('Name'," ",'street'," ",'city'," ",'acct_no',0,'acct_type',' ','oldbalance',0,'newbalance',0,'payment',0,'lastpayment',0);
customer = account;

function[] = main()
    printf("CUSTOMER BILLING SYSTEM\n\n");
    printf("How many customers are there?");
    n = scanf("%d");
    
    for i = 1:n;
        customer = readinput(i,customer);
        //determine account status
        if customer(i).payment > 0 then
            if customer(i).payment < (0.1*customer(i).oldbalance) then
                customer(i).acct_type = 'O';
            else
                customer(i).acct_type = 'C';
            end
        else
            if customer(i).oldbalance > 0 then
                 customer(i).acct_type='D';
            else
                 customer(i).acct_type='C';
            end
        end
        //adjust account balance
        customer(i).newbalance = customer(i).oldbalance - customer(i).payment;
    end
    for i = 1:n
        writeoutput(i,customer);
    end
endfunction

function[customer] = readinput(i,customer)
    //read input data and update record for each customer
    printf("\nCustomer no. %d\n",i);
    printf("    Name:    ");
    customer(i).name=read(%io(1), 1, 1, '(a)') ;
    printf("    Street:    ");
    customer(i).street=read(%io(1), 1, 1, '(a)') ;  
    printf("    City:    ");
    customer(i).city=read(%io(1), 1, 1, '(a)') ;
    printf("    Account Number:    ");
    customer(i).acct_no=scanf("%d") ;
    printf("    Previous Balance:    ");
    customer(i).oldbalance=scanf("%d") ;
    printf("    Current Payment:    ");
    customer(i).payment=scanf("%d") ;
    printf("    Payment date (mm/dd/yyyy):\n ");
        printf("Month: ");
        customer(i).lastpayment.month=scanf("%d");
        printf("Day: ");
        customer(i).lastpayment.day=scanf("%d") ;
        printf("Year: ");
        customer(i).lastpayment.year=scanf("%d") ;
    return customer;
endfunction

function[] = writeoutput(i,customer)
    printf("\nName:    ");
    write(%io(2),customer(i).name);
    printf("Account number: %d\n", customer(i).acct_no);
    printf("Street: "); 
    write(%io(2),customer(i).street);
    printf("City:    ");
    write(%io(2),customer(i).city);
    printf("Old balance: %7.2f", customer(i).oldbalance);
    printf("    Current payment: %7.2f", customer(i).payment);
    printf("    New balance: %7.2f\n\n", customer(i).newbalance);
    printf("Account status:    ");
    
    select customer(i).acct_type
    case 'C' then
        printf("CURRENT\n\n");
    case 'D' then
        printf("DELINQUENT\n\n");
    case 'O' then
        printf("OVERDUE\n\n");
    else
        printf("ERROR\n\n");
    end
    return;
endfunction

//calling main()
funcprot(0);
main();