//Programming Example 8.11
//Seach for maximum
                //First File
funcprot(0);
cnst=0.0001
function[] = file1()
    global yl
    global yr
    global a
    global b
    global xl
    global xr          
    global cnst             //external variables    
    
    //read input data (interval end points)
    printf("\n a=");
    a=scanf("%lg");
    printf("\n b=");
    b=scanf("%lg");
    
    //interval reduction loop
    first="yes";
    reduce();
    while((yl <> yr ) & ((b-a)>(3*cnst)))
        reduce();
    end
    xmax = 0.5 *( xl + xr );
    ymax=curve(xmax);
    
    printf("\n xmax=%8.6f  ymax=%8.6f", xmax, ymax);
endfunction

                //calling routine
path=get_absolute_file_path("file01.sci");
PATH=path+"file02.sci";
exec(PATH);
path1=get_absolute_file_path("file01.sci");
PATH1=path1+"file03.sci";
exec(PATH1);
file1()