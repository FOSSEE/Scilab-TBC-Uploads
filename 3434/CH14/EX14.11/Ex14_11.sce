clc
// given data
Co=10000 // initial investment in rs
B=900.0 // net annual savings per year

nsp=Co/B // simple payback period

printf( "The simple payback period is %0.2f",nsp)
if nsp<20
    printf( "\n proposal may be accepted")
else
    printf( "\n proposal may not be accepted")
end
