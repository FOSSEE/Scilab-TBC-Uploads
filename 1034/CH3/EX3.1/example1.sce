clear;
clc;
printf("\nexample 3.1\n");
//stacks follow LIFO i.e last in first out. so printing out array from last to first will be same as stack.
a=[12;35;16;48;29;17;13]
i=7;
printf("\tstack =");
while i>0
    printf("\n\t%d",a(i));
    i=i-1;
end
