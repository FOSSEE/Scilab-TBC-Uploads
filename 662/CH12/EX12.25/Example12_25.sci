            //Example 12.25
        //passing structure to function

record = struct('name', " ", 'acct_no', 0, 'acct_type', ' ', 'balance', 0.00);
function[] = main()
    //transfer a structure type pointer to a function
    pt = record;
    //adjust(pt);            //function declaration
    customer = struct('name', "Smith", 'acct_no',3333, 'acct_type', 'C', 'balance',33.33);
    printf("%s %d %c %.2f\n", customer.name, customer.acct_no, customer.acct_type, customer.balance);
    customer = adjust(customer);
    printf("%s %d %c %.2f\n", customer.name, customer.acct_no, customer.acct_type, customer.balance);
endfunction

function[pt] = adjust(pt)            //function definition
    pt.name = "Jones";
    pt.acct_no = 9999;
    pt.acct_type = 'R';
    pt.balance = 99.99;
    return pt;
endfunction

//calling main()
funcprot(0);
main();