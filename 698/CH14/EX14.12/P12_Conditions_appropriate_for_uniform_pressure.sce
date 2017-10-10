clc
//Example 14.12
//Conditions preferring uniform pressure

//------------------------------------------------------------------------------
//This example is derivation based, hence the code will comprise only of statements printed to text file
//Printing result file to .txt
res12=mopen(TMPDIR+'12_conditions_appropriate_for_uniform_pressure.txt','wt')
mfprintf(res12,"Uniform pressure assumption is more appropriate where the plates are\nflexible to permit deflection when wear occurs.\n")
mclose(res12)
editor(TMPDIR+'12_conditions_appropriate_for_uniform_pressure.txt')
//------------------------------------------------------------------------------
//-------------------------------End of program---------------------------------