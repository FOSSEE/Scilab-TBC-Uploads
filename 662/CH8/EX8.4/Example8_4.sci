//Programming Example 8.4
//find the maximum of a function within a specified interval

funcprot(0)
CNST=0.0001;

function[]= mainmax()
    global a;
    global b;
    //read input data(interval end points)
    printf("a=");
    a=scanf("%f");
    printf("b=");
    b=scanf("%f");
    
    global x1;
    global y1;
    global xr;
    global yr;
    //interval reduction loop
    first="t";
    while ((( y1<> yr) & (( b- a)>3*CNST) ) | (first=="t"))
        reduce();
        first="f";
    end
    //calculate xmax and ymax and display the result
    xmax=0.5*( x1+ xr);
    ymax=curve(xmax);
    //disp(xmax,ymax,"xmax  ymax")
    printf("xmax=%f , yamx=%f", xmax,ymax);
endfunction

//interval reduction routine
function[]=reduce()
    global a;
    global b;
    global x1;
    global y1;
    global xr;
    global yr;
     x1= a+0.5*( b- a-CNST);
     xr= x1+CNST;
     y1=curve(x1);
     yr=curve(xr);
    if y1>yr then
        b=xr;  
    end
    if y1<yr then
        a=xr
      
    end
endfunction

//evaluate the function y=x*cos(x)
function[sol]= curve(x)
    sol=x*cos(x);
endfunction

// routine call
mainmax()

