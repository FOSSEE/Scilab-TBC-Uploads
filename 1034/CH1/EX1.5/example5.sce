//     example 1.5
//   ADT(Abstract Data type) defination of natural number.
 function[]=ADT(x)
     printf("ADT natural no. is ");
 printf("\nOBJECTS: an ordered subrange of the integers starting at zero and ");
     printf("ending at the maximun integer (INT_MAX) on the computer");
    INT_MAX=32767;
    if x==0                 //NaturalNumberZero()
        printf("\n",0);
        end
        if x==INT_MAX then     //NaturalNumberSuccessor(x)
            printf("\nans. is=%d",x);
        else 
            printf("\nans. is=%d",x+1);
        end 
    endfunction
    //callin routine
    x=56
    y=ADT(x);