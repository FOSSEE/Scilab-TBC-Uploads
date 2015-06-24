            //Example 4.1
            clc
//use of several input output library functions

//c,d are cahracter type variables
//x, y float variables 
// i, j, k, int type variables
printf("Enter character: ")
c=scanf("%1c");                                //character input
printf("Enter folating point number: ")
x=scanf("%f");              //floating-point input
printf("Enter two numbers seperated by space: ")
//enter i and j  seperated by spaces
[i, j]=scanf("%d %d");               //integer input
disp(i ,j ,"j and i: ")

//let d='a';
d='a';
disp(d);                            //character output

k=33567;
y=5678.71109;
printf("k = %3d,  y =  %7.4f ", k, y);        //numerical output
