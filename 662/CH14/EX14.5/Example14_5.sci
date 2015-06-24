            //Example 14.5
         //Complementation C program

function[] = main()
    i = '5b3c';
    id = hex2dec(i);  
    //to convert '5b3c' to dec in order to obtain its complement.
    //complementation require dec values.
    cid = bitcmp(id,16);
    cih = dec2hex(cid);
    disp("hexadecimal values:    i = " + i +"    ~i = "+ cih);
    printf("decimal equivalents:   i = %d     ~i = %d",id, cid);
endfunction

//calling main()
funcprot(0);
main();