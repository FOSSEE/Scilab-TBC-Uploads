//             Example 9.7 
//Write a multifunction how autometic variables work.
funcprot(0);
function[]=function1()
    m=int32(10);         //Local Variable
    disp(m);             //First Output
endfunction
function[]=function2()
    m= int32(100);       //Local Variable
    function1();         //Calling function1()
    disp(m);             //Second Output
endfunction
function[]=funcmain()
m=int32(1000);
function2();     //calling function2()
disp(m);         //Third output
endfunction
funcmain()       //calling funcmain() function