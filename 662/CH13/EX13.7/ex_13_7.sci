            //Example 12.14
        //Updating Customer Records
        
Date = struct('month',0,'day',0,'year',0);
lastpayment = Date;
record = struct('Name'," ",'street'," ",'city'," ",'acct_no',0,'acct_type',' ','oldbalance',0,'newbalance',0,'payment',0,'lastpayment',0);
customer = record;

function[] = main()
    fpt=mopen('records.txt','w');
    printf("CUSTOMER BILLING SYSTEM - INITIALIZATION\n\n");
    printf(" Please enter today  date (mm/dd/yyyy):\n ");
    [customer.lastpayment.month,customer.lastpayment.day,customer.lastpayment.year]=scanf("%d/%d/%d");
   customer.newbalance =0;
   customer.payment=0 ;
   customer.acct_type = 'C';
    flag= 'TRUE';
    while(flag=='TRUE')
        printf("\n  Name (Enter END when finished):    ");
        customer.name=scanf("%s") ;
        mfprintf(fpt,'%s',customer.name);
        //Test for stopping condition
        if(strcmp(customer.name,'END')==0) then
            break;
         end
         customer = readscreen(customer);
         writefile(customer);
     end
     mclose(fpt);
endfunction

function[customer] = readscreen(customer)
    //read input data and update record for each customer
    printf("    Street:    ");
    customer.street=read(%io(1), 1, 1, '(a)') ;  
    printf("    City:    ");
    customer.city=read(%io(1), 1, 1, '(a)') ;
    printf("    Account Number:    ");
    customer.acct_no=scanf("%d") ;
    printf("    current Balance:    ");
    customer.oldbalance=scanf("%f") ;
    return customer;
endfunction

function[] = writefile(customer)
 
    mfprintf(fpt,'%s\n',customer.street);
    mfprintf(fpt,'%s\n',customer.city);
    mfprintf(fpt,'%d\n', customer.acct_no);
    mfprintf(fpt,'%c\n',customer.acct_type );
    mfprintf(fpt,'%.2f\n',customer.oldbalance);
    mfprintf(fpt,'%.2f\n',customer.newbalance);
    mfprintf(fpt,'%.2f\n',customer.payment);
    mfprintf(fpt,'%d/%d/%d\n',customer.lastpayment.month,customer.lastpayment.day,customer.lastpayment.year);
    return;
endfunction

//calling main()
funcprot(0);
main();