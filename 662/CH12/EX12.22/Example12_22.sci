        //Example 12.22
    //simple c structure program

function[] = main()
    n = 3333;
    t = 'C';
    b = 99.99;
    
    Date = struct('month',00,'day',00,'year',0000);
    customer = struct('acct_no',n,'acct_type',t,'name',"Smith",'balance',b, 'lastpayment',Date);
    pc = customer;
    
    printf("%d %c %s %.2f\n", customer.acct_no, customer.acct_type, customer.name, customer.balance);
    printf("%d %c %s %.2f\n", pc.acct_no, pc.acct_type, pc.name, pc.balance);
endfunction

//calling main()
funcprot(0);
main();