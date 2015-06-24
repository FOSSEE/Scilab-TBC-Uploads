//             Example 9.8 
//Write a multifunction to illustrate the properties of global variables.
funcprot(0);
function[x]=fun1()
    global x;
    x=x+10;            //global x
endfunction
function[x]=fun2()
    x=1               //Local x
endfunction
function[x]=fun3()
    global x;
    x=x+10;            //global x
endfunction
    global x;
    x=10;
    printf("x=%d\n",x)
    //calling fun1(),fun2(),fun3() functions
    printf("x=%d\n",fun1());
    printf("x=%d\n",fun2());
    printf("x=%d\n",fun3());
