          //Example 2.25

//one dimensional character array
letter=['c','a','l','i','f','o','r','n','i','a'];

//size displays the size of array as [start index.  end index]
[s,e]=size(letter);

printf("Element Number   Subscript Value  Array Element     Corresponding data Item");
//in c the subscript start from 0 whereas in scilab from 1...
for i = s: e
    l=letter(i);
    csub=i-1;
    printf("\n%d \t\t %d \t\t letter[%d] \t\t %c", i , csub, csub, l );
end
