clear;
clc;
disp("--------------Example 20.7---------------")
M_bit = 1;
fragmentation_offset = 0;
if(M_bit==0) // display the result according to the value of the M bit
    printf("There are no more fragments; this fragment is the last one.");
else
    if(fragmentation_offset == 0) // display the result according to the value of the fragmentation offset
        printf("The M bit is %d and the offset value is %d. Hence it is the first fragment.",M_bit,fragmentation_offset);
    else
        printf("It is not first or last fragment. It can be any fragment in between.");
    end
    
end
