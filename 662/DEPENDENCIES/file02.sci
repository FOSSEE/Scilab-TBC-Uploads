//Programming Example 8.11
//Interval reduction Routine
        //Second File

   
function[]= reduce()
    global yl
    global yr
    global a
    global b
    global xl
    global xr            //external variables
    xl=a+0.5 *(b-a-cnst);
    xr=xl+cnst;
    yl=curve(xl);
    yr=curve(xr);
    if(yl>yr) then                //retain left interval
        b=xr;
         return;
     end
     if(yl<yr) then                //retain right interval
         a=xl;
         return;
     end
endfunction
