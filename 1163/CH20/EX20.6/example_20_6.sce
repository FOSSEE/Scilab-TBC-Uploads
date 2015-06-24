clear;
clc;
disp("--------------Example 20.6---------------")
M_bit = 1;
if(M_bit==0) // display the result according to the value of the M bit
    printf("There are no more fragments; this fragment is the last one.");
else
    printf("There is at least one more fragment. This fragment can be the first one or a middle one, but not the last one.\nIt cannot be determined if it is the first one or a middle one. The value of the fragmentation offset is needed to determine this.");
end
