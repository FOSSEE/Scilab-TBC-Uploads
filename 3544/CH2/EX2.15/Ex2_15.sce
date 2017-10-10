// Vignere tableau

a = ascii('A')

// Print header
printf(" \t")
for i=1:26
    printf("%c ",ascii(a+i-1))
end
printf("\n\n")
//end of header

for i=1:26
    printf("%c\t",ascii(a+i-1))
    for j=0:25
        printf("%c ",ascii( a + modulo( i+j+key, 26 ) ) )
    end
    printf("\n")
end
